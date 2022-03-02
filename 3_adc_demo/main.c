#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"

#define LEVEL1 0x40
#define LEVEL2 0x80
#define LEVEL3 0xC0

void initGPIO(void);
void initADC(void);

/*********************************************************************
 *     ADC Demo, by Eduardo Corpeño
 *
 *     AD0 -> {PB0,PB1,PB5}
 **********************************************************************/

int main(void) {
  int pot_in;

  initGPIO();
  initADC();

  do {
    pot_in = adc_regular_data_read(ADC0);

    if (pot_in > LEVEL1)  // 25% of 3.3V
      gpio_bit_reset(GPIOB, GPIO_PIN_0);
    else
      gpio_bit_set(GPIOB, GPIO_PIN_0);

    if (pot_in > LEVEL2) // 50% of 3.3V
      gpio_bit_reset(GPIOB, GPIO_PIN_1);
    else
      gpio_bit_set(GPIOB, GPIO_PIN_1);

    if (pot_in > LEVEL3) // 75% of 3.3V
      gpio_bit_reset(GPIOB, GPIO_PIN_5);
    else
      gpio_bit_set(GPIOB, GPIO_PIN_5);

  } while (1);
}

void initGPIO() {
  // Turn on the peripheral clocks
  rcu_periph_clock_enable(RCU_GPIOB);
  // Configure PB{0,1,5}
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_1);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_5);
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