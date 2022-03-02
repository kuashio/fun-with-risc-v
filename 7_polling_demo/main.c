#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"

// Let's try 3 frequencies: 200ms (5Hz), 400ms (2.5Hz), 2000ms (0.5Hz)

#define BLINK 100
// #define BLINK 200
// #define BLINK 1000

void delay_ms(uint32_t);

/*********************************************************************
*     Delay-Based Polling Demo, by Eduardo Corpeño
*     
*     ~PA0 -> PB0  + blink(PB5)
**********************************************************************/

int main(void) {
  rcu_periph_clock_enable(RCU_GPIOA);
  rcu_periph_clock_enable(RCU_GPIOB);

  gpio_init(GPIOA, GPIO_MODE_IPU,    GPIO_OSPEED_50MHZ,GPIO_PIN_0);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,GPIO_PIN_0);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,GPIO_PIN_5);
 

  while (1){
    gpio_bit_write(GPIOB, GPIO_PIN_0, (bit_status)(1-gpio_input_bit_get(GPIOA, GPIO_PIN_0)));
    gpio_bit_set(GPIOB, GPIO_PIN_5);
    delay_ms(BLINK);                 
    gpio_bit_reset(GPIOB, GPIO_PIN_5);
    delay_ms(BLINK);
  }
}


void delay_ms(uint32_t t){
  volatile uint32_t x, y;
  for(x = t * 2075 ; x ; x--)
    y = x + y / x * y;
}