#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"

void initADC(void);
void initUSART(void);
void delay_ms(uint32_t);
void LCD_print_str(unsigned char *);



/*********************************************************************
 *     Quick and Dirty Voltmeter Demo, by Eduardo Corpeño
 *
 *     AD0 -> USART
 **********************************************************************/

int main(void) {
  int pot_in;
  uint16_t mV_in;
  unsigned char voltage_str[6] = "0.000";

  initADC();
  initUSART();
  
  delay_ms(100);

  // Clear screen
  usart_data_transmit(USART0, 0xFE);
  delay_ms(1);
  usart_data_transmit(USART0, 0x01);
  delay_ms(1);
  
  // Set cursor to (0,0)
  usart_data_transmit(USART0, 0xFE);
  delay_ms(1);
  usart_data_transmit(USART0, 0x80);
  delay_ms(1);
        
  LCD_print_str("QnD Voltmeter\n");
  LCD_print_str("Vin = ");


  while(1){
    pot_in = adc_regular_data_read(ADC0);
    
    usart_data_transmit(USART0, 0xFE);
    delay_ms(1);
    usart_data_transmit(USART0, 0xC6);
    delay_ms(1);

    mV_in = 3300 * (pot_in/4096.0F);
    
    // Extract all digits for the input voltage    
    voltage_str[0] = (mV_in / 1000) + '0';
    mV_in = (mV_in % 1000);
    
    voltage_str[1] = '.';
    
    voltage_str[2] = (mV_in / 100) + '0';
    mV_in = (mV_in % 100);
    voltage_str[3] = (mV_in / 10) + '0';
    mV_in = (mV_in % 10);
    voltage_str[4] = mV_in + '0';

    LCD_print_str(voltage_str);
    LCD_print_str("V");

    delay_ms(20);
    
  }
}

void LCD_print_str(unsigned char *str){
  while(*str){
    while(RESET == usart_flag_get(USART0, USART_FLAG_TBE));
    if(*str=='\n'){
      usart_data_transmit(USART0, 0xFE);
      delay_ms(1);
      usart_data_transmit(USART0, 0xC0);
    }
    else
      usart_data_transmit(USART0, *str);
    str++;
    delay_ms(1);
  }
}


void initUSART(void){
  rcu_deinit();
  rcu_system_clock_source_config(RCU_CKSYSSRC_HXTAL);
  /* enable USART and GPIOA clock */
  rcu_periph_clock_enable(RCU_GPIOA);
  rcu_periph_clock_enable(RCU_USART0);
    
  /* configure USART0 Tx as alternate function push-pull */
  gpio_init(GPIOA, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_9);
    
  usart_deinit(USART0);
  usart_baudrate_set(USART0, 9600U);
  usart_word_length_set(USART0, USART_WL_8BIT);
  usart_stop_bit_set(USART0, USART_STB_2BIT);
  usart_parity_config(USART0, USART_PM_NONE);
  usart_hardware_flow_rts_config(USART0, USART_RTS_DISABLE);
  usart_hardware_flow_cts_config(USART0, USART_CTS_DISABLE);
  //usart_receive_config(USART0, USART_RECEIVE_ENABLE);
  usart_transmit_config(USART0, USART_TRANSMIT_ENABLE);
  usart_enable(USART0);

}

void initADC() {
  // Turn on the peripheral clocks
  rcu_periph_clock_enable(RCU_ADC0);

  // ADC has a maximum clock frequency of 14MHz.
  // System clock speed is 8MHz 
  // Divide by 2 to get 4MHz
  rcu_adc_clock_config(RCU_CKADC_CKAPB2_DIV2);

  // ADC Configuration : Pin A0
  rcu_periph_clock_enable(RCU_GPIOA);
  gpio_init(GPIOA, GPIO_MODE_AIN, GPIO_OSPEED_50MHZ, GPIO_PIN_0);

  // reset ADC
  adc_deinit(ADC0);

  // Configure ADC mode
  adc_mode_config(ADC_MODE_FREE); 

  // Configure ADC continous function 
  adc_special_function_config(ADC0, ADC_CONTINUOUS_MODE, ENABLE);

  // Configure ADC data alignment 
  adc_data_alignment_config(ADC0, ADC_DATAALIGN_RIGHT);

  // Configure ADC channel length 
  adc_channel_length_config(ADC0, ADC_REGULAR_CHANNEL, 1);

  // Configure 8-bit resolution
  adc_resolution_config(ADC0, ADC_RESOLUTION_12B);

  // Configure fastest sample & hold time 
  adc_regular_channel_config(ADC0, 0, ADC_CHANNEL_0, ADC_SAMPLETIME_1POINT5);
  
  // Configure ADC trigger 
  adc_external_trigger_source_config(ADC0, ADC_REGULAR_CHANNEL, ADC0_1_EXTTRIG_REGULAR_NONE);

  // Configure ADC external trigger
  adc_external_trigger_config(ADC0, ADC_REGULAR_CHANNEL, ENABLE);

  // Enable ADC interface
  adc_enable(ADC0);
  
  // Configure ADC calibration 
  adc_calibration_enable(ADC0);

  // Trigger conversions
  adc_software_trigger_enable(ADC0, ADC_REGULAR_CHANNEL);
}

void delay_ms(uint32_t t){
  volatile uint32_t x, y;
  for(x = t * 2075 ; x ; x--)
    y = x + y / x * y;
}