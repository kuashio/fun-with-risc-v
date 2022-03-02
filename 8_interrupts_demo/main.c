#undef USE_STDPERIPH_DRIVER
#include "gd32vf103.h"

void initGPIO();
void initTimer();

/*********************************************************************
*     Interrupt-Driven Demo, by Eduardo Corpeño
*     
*     ~PA0 -> PB0  + blink(PB5)
**********************************************************************/

volatile uint32_t millis = 0;

int main(void){

    initGPIO(); 
    
    // Enable the Enhanced Core Local Interrupt Controller
    eclic_global_interrupt_enable();

    // Timer configuration 
    initTimer();

    while (1){
      gpio_bit_write(GPIOB, GPIO_PIN_0, (bit_status)(1-gpio_input_bit_get(GPIOA, GPIO_PIN_0)));
    }
}

void initGPIO(){
  rcu_periph_clock_enable(RCU_GPIOA);
  rcu_periph_clock_enable(RCU_GPIOB);

  gpio_init(GPIOA, GPIO_MODE_IPU,    GPIO_OSPEED_50MHZ,GPIO_PIN_0);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,GPIO_PIN_0);
  gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ,GPIO_PIN_5);
}

void initTimer(){

    // Configuration structs 
    timer_oc_parameter_struct timer_ocinitpara;
    timer_parameter_struct timer_initpara;

    // Enable the TIMER1 IRQ
    eclic_irq_enable(TIMER1_IRQn,1,0);
    
    // Enable the peripheral clock
    rcu_periph_clock_enable(RCU_TIMER1);

    // Reset Timer1
    timer_deinit(TIMER1);

    // Initialize timer configuration struct 
    timer_struct_para_init(&timer_initpara);

    // TIMER1 configuration 
    // Frequency = core clock / ((1+prescaler)*period) =   8MHz / (2*40000) = 1KHz
    timer_initpara.prescaler         = 1;
    timer_initpara.alignedmode       = TIMER_COUNTER_EDGE;
    timer_initpara.counterdirection  = TIMER_COUNTER_UP;
    timer_initpara.period            = 40000;
    timer_initpara.clockdivision     = TIMER_CKDIV_DIV1;
    timer_init(TIMER1, &timer_initpara);

    // Initialize TIMER channel output parameter struct 
    timer_channel_output_struct_para_init(&timer_ocinitpara);

    //Channel configuration 
    timer_ocinitpara.outputstate  = TIMER_CCX_ENABLE;
    timer_ocinitpara.ocpolarity   = TIMER_OC_POLARITY_HIGH;
    timer_ocinitpara.ocidlestate  = TIMER_OC_IDLE_STATE_LOW;
    timer_channel_output_config(TIMER1, TIMER_CH_0, &timer_ocinitpara);
    
    // CH0 configuration as Output Compare 
    timer_channel_output_pulse_value_config(TIMER1, TIMER_CH_0, 40000/2);
    timer_channel_output_mode_config(TIMER1, TIMER_CH_0, TIMER_OC_MODE_TIMING);
    timer_channel_output_shadow_config(TIMER1, TIMER_CH_0, TIMER_OC_SHADOW_DISABLE);

    // Enable interrupt on Timer 1, channel 0
    timer_interrupt_enable(TIMER1, TIMER_INT_CH0);
    // Clear the interrupt flag
    timer_interrupt_flag_clear(TIMER1, TIMER_INT_CH0);

    // Enable the timer
    timer_enable(TIMER1);
}

// Timer 1 ISR
void TIMER1_IRQHandler(void){   
    // Respond to Channel 0 interrupts
    if(SET == timer_interrupt_flag_get(TIMER1, TIMER_INT_CH0)){

        millis++; //Add one each time an interrupt happens
      
        // Every second toggle the LED at PB5
        if(millis % 1000 == 0)
            gpio_bit_write(GPIOB, GPIO_PIN_5, !gpio_output_bit_get(GPIOB, GPIO_PIN_5));

        // Clear the interrupt flag 
        timer_interrupt_flag_clear(TIMER1, TIMER_INT_CH0);
    }
}
