
#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"


/*********************************************************************
*     GPIO Demo, by Eduardo Corpeño
*     
*     ~PA0 -> PB0
**********************************************************************/

int main(void) {
  rcu_periph_clock_enable(RCU_GPIOA);
  rcu_periph_clock_enable(RCU_GPIOB);

  gpio_init(GPIOA, GPIO_MODE_IPU,    GPIO_OSPEED_50MHZ,GPIO_PIN_0);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,GPIO_PIN_0);
 

  do {
    gpio_bit_write(GPIOB, GPIO_PIN_0, (bit_status)(1-gpio_input_bit_get(GPIOA, GPIO_PIN_0)));
  } while (1);
}