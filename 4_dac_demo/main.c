#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"

#define DAC_INCREMENT 25
#define DEBOUNCE 10

void initGPIO(void);
void initDAC(void);
void delay_ms(uint32_t);

/*********************************************************************
 *     DAC Demo, by Eduardo Corpeo
 *
 *     {PA0,PTC13} -> DAC0
 **********************************************************************/


int main(void) {
  uint8_t v_out = 0x80;
  uint8_t key1_prev = RESET, key2_prev = RESET, key1_now, key2_now;

  initGPIO();
  initDAC();
  
  while (1){

    // On key 1 press (Down)
    // Rising edge
    key1_now = gpio_input_bit_get(GPIOA, GPIO_PIN_0);

    if ( (key1_prev == RESET) && (key1_now == SET) ){ 
      delay_ms(DEBOUNCE); // blocking software debounce
      if (v_out >= DAC_INCREMENT) 
        v_out -= DAC_INCREMENT;
      dac_data_set(DAC0,DAC_ALIGN_8B_R,v_out);
    }
    // Falling edge
    if ( (key1_prev == SET) && (key1_now == RESET) ) 
      delay_ms(DEBOUNCE); // blocking software debounce

    key1_prev = key1_now;

    
    // On key 2 press (Up)
    // Rising edge
    key2_now = gpio_input_bit_get(GPIOC, GPIO_PIN_13);
    
    if ( (key2_prev == RESET) && (key2_now == SET) ){
      delay_ms(DEBOUNCE); // blocking software debounce
      if (v_out <= 0xff-DAC_INCREMENT) 
        v_out += DAC_INCREMENT;
      dac_data_set(DAC0,DAC_ALIGN_8B_R,v_out);
    }
    // Falling edge
    if ( (key2_prev == SET) && (key2_now == RESET) ) 
      delay_ms(DEBOUNCE); // blocking software debounce
    
    key2_prev = key2_now;

  }
}

void initGPIO() {
  // Turn on the peripheral clocks
  rcu_periph_clock_enable(RCU_GPIOA);
  rcu_periph_clock_enable(RCU_GPIOC);

  gpio_init(GPIOA, GPIO_MODE_IPU,    GPIO_OSPEED_50MHZ,GPIO_PIN_0);
  gpio_init(GPIOC, GPIO_MODE_IPU,    GPIO_OSPEED_50MHZ,GPIO_PIN_13);
}

void initDAC() {
  // Turn on the peripheral clocks
  rcu_periph_clock_enable(RCU_DAC);

  // DAC Configuration : Pin DAC_OUT_0
  rcu_periph_clock_enable(RCU_GPIOA);
  gpio_init(GPIOA, GPIO_MODE_AIN, GPIO_OSPEED_50MHZ, GPIO_PIN_4);

  dac_deinit();
  /* configure the DAC0 */
  dac_trigger_disable(DAC0);
  dac_wave_mode_config(DAC0, DAC_WAVE_DISABLE);
  dac_output_buffer_enable(DAC0);
  
  /* enable DAC0 and set data */
  dac_enable(DAC0);
  dac_data_set(DAC0,DAC_ALIGN_8B_R,0x80);
}

void delay_ms(uint32_t t){
  volatile uint32_t x, y;
  for(x = t * 2075 ; x ; x--)
    y = x + y / x * y;
}