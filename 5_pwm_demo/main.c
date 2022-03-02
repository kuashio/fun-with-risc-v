#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"

void initADC(void);
void initPWM(void);
void delay_ms(uint32_t);

/*********************************************************************
 *     PWM Demo, by Eduardo Corpeño
 *
 *     AD0 -> {Timer2, Channel 1}
 **********************************************************************/

int main(void) {
  int pot_in;

  initADC();
  initPWM();

  while(1){
    pot_in = adc_regular_data_read(ADC0);

    timer_channel_output_pulse_value_config(TIMER2,TIMER_CH_1,pot_in*31); // 255*3= 79051

    delay_ms(100);

  }

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
  adc_resolution_config(ADC0, ADC_RESOLUTION_8B);

  // Configure fastest sample & hold time 
  adc_regular_channel_config(ADC0, 0, ADC_CHANNEL_0, ADC_SAMPLETIME_1POINT5);
  
  // Configure ADC trigger 
  adc_external_trigger_source_config(ADC0, ADC_REGULAR_CHANNEL, ADC0_1_EXTTRIG_REGULAR_NONE);

  // Configure ADC external trigger
  adc_external_trigger_config(ADC0, ADC_REGULAR_CHANNEL, ENABLE);

  // Configure word length
  adc_resolution_config(ADC0, ADC_RESOLUTION_8B);

  // Enable ADC interface
  adc_enable(ADC0);
  
  // Configure ADC calibration 
  adc_calibration_enable(ADC0);

  // Trigger conversions
  adc_software_trigger_enable(ADC0, ADC_REGULAR_CHANNEL);
}


void initPWM(){ // Timer 2 Ch 1 PB5
    rcu_periph_clock_enable(RCU_GPIOB);
    rcu_periph_clock_enable(RCU_AF);
    gpio_init(GPIOB, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_5);
    gpio_pin_remap_config(GPIO_TIMER2_PARTIAL_REMAP,ENABLE);

    /* These structs are used for configuring the timer */
    timer_oc_parameter_struct timer_ocinitpara;
    timer_parameter_struct timer_initpara;

    /* First we need to enable the clock for the timer */
    rcu_periph_clock_enable(RCU_TIMER2);

    /* Reset the timer to a known state */
    timer_deinit(TIMER2);

    /* This function sets the struct up with default values */
    timer_struct_para_init(&timer_initpara);

    /* timer configuration */
    timer_initpara.prescaler         = 0;                   // Prescaler 0 gives counter clock of 8MHz
    timer_initpara.alignedmode       = TIMER_COUNTER_EDGE;  // count alignment edge = 0,1,2,3,0,1,2,3... center align = 0,1,2,3,2,1,0
    timer_initpara.counterdirection  = TIMER_COUNTER_UP;    // Counter direction
    timer_initpara.period            = 8000;                // Sets how far to count. 8MHz/8000 = 1KHz (max is 65535)
    timer_initpara.clockdivision     = TIMER_CKDIV_DIV1;    // This is used by deadtime, and digital filtering (not used here though)
    timer_initpara.repetitioncounter = 0;                   // Runs continiously
    timer_init(TIMER2, &timer_initpara);                    // Apply settings to timer


    /* This function initializes the channel setting struct */
    timer_channel_output_struct_para_init(&timer_ocinitpara);
    /* PWM configuration */
    timer_ocinitpara.outputstate  = TIMER_CCX_ENABLE;                   // Channel enable
    timer_ocinitpara.outputnstate = TIMER_CCXN_DISABLE;                 // Disable complementary channel
    timer_ocinitpara.ocpolarity   = TIMER_OC_POLARITY_LOW;             // Active state is low
    timer_ocinitpara.ocnpolarity  = TIMER_OCN_POLARITY_LOW;    
    timer_ocinitpara.ocidlestate  = TIMER_OC_IDLE_STATE_HIGH;            // Idle state is high
    timer_ocinitpara.ocnidlestate = TIMER_OCN_IDLE_STATE_HIGH;
    timer_channel_output_config(TIMER2,TIMER_CH_1,&timer_ocinitpara);   // Apply settings to channel

    timer_channel_output_pulse_value_config(TIMER2,TIMER_CH_1,3000);                   // Set pulse width
    timer_channel_output_mode_config(TIMER2,TIMER_CH_1,TIMER_OC_MODE_PWM0);         // Set pwm-mode
    timer_channel_output_shadow_config(TIMER2,TIMER_CH_1,TIMER_OC_SHADOW_DISABLE);

    /* auto-reload preload enable */
    timer_auto_reload_shadow_enable(TIMER2);
 
    /* start the timer */
    timer_enable(TIMER2);
}

void delay_ms(uint32_t t){
  volatile uint32_t x, y;
  for(x = t * 2075 ; x ; x--)
    y = x + y / x * y;
}