# 1 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\GD32VF1xx\\Source\\GD32VF1xx_Startup.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\GD32VF1xx\\Source\\GD32VF1xx_Startup.s"
# 43 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\GD32VF1xx\\Source\\GD32VF1xx_Startup.s"
# 1 "C:/dev/riscv/fun_with_rv/adc_demo/GD32VF1xx/Device/Include/riscv_encoding.h" 1
# 44 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\GD32VF1xx\\Source\\GD32VF1xx_Startup.s" 2

  .section .vectors, "ax"

  .weak eclic_msip_handler
  .weak eclic_mtip_handler
  .weak eclic_bwei_handler
  .weak eclic_pmovi_handler
  .weak WWDGT_IRQHandler
  .weak LVD_IRQHandler
  .weak TAMPER_IRQHandler
  .weak RTC_IRQHandler
  .weak FMC_IRQHandler
  .weak RCU_IRQHandler
  .weak EXTI0_IRQHandler
  .weak EXTI1_IRQHandler
  .weak EXTI2_IRQHandler
  .weak EXTI3_IRQHandler
  .weak EXTI4_IRQHandler
  .weak DMA0_Channel0_IRQHandler
  .weak DMA0_Channel1_IRQHandler
  .weak DMA0_Channel2_IRQHandler
  .weak DMA0_Channel3_IRQHandler
  .weak DMA0_Channel4_IRQHandler
  .weak DMA0_Channel5_IRQHandler
  .weak DMA0_Channel6_IRQHandler
  .weak ADC0_1_IRQHandler
  .weak CAN0_TX_IRQHandler
  .weak CAN0_RX0_IRQHandler
  .weak CAN0_RX1_IRQHandler
  .weak CAN0_EWMC_IRQHandler
  .weak EXTI5_9_IRQHandler
  .weak TIMER0_BRK_IRQHandler
  .weak TIMER0_UP_IRQHandler
  .weak TIMER0_TRG_CMT_IRQHandler
  .weak TIMER0_Channel_IRQHandler
  .weak TIMER1_IRQHandler
  .weak TIMER2_IRQHandler
  .weak TIMER3_IRQHandler
  .weak I2C0_EV_IRQHandler
  .weak I2C0_ER_IRQHandler
  .weak I2C1_EV_IRQHandler
  .weak I2C1_ER_IRQHandler
  .weak SPI0_IRQHandler
  .weak SPI1_IRQHandler
  .weak USART0_IRQHandler
  .weak USART1_IRQHandler
  .weak USART2_IRQHandler
  .weak EXTI10_15_IRQHandler
  .weak RTC_Alarm_IRQHandler
  .weak USBFS_WKUP_IRQHandler
  .weak EXMC_IRQHandler
  .weak TIMER4_IRQHandler
  .weak SPI2_IRQHandler
  .weak UART3_IRQHandler
  .weak UART4_IRQHandler
  .weak TIMER5_IRQHandler
  .weak TIMER6_IRQHandler
  .weak DMA1_Channel0_IRQHandler
  .weak DMA1_Channel1_IRQHandler
  .weak DMA1_Channel2_IRQHandler
  .weak DMA1_Channel3_IRQHandler
  .weak DMA1_Channel4_IRQHandler
  .weak CAN1_TX_IRQHandler
  .weak CAN1_RX0_IRQHandler
  .weak CAN1_RX1_IRQHandler
  .weak CAN1_EWMC_IRQHandler
  .weak USBFS_IRQHandler

  .globl vector_base
vector_base:
  j Reset_Handler
  .align 2
  .word 0
  .word 0
  .word eclic_msip_handler
  .word 0
  .word 0
  .word 0
  .word eclic_mtip_handler
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word eclic_bwei_handler
  .word eclic_pmovi_handler
  .word WWDGT_IRQHandler
  .word LVD_IRQHandler
  .word TAMPER_IRQHandler
  .word RTC_IRQHandler
  .word FMC_IRQHandler
  .word RCU_IRQHandler
  .word EXTI0_IRQHandler
  .word EXTI1_IRQHandler
  .word EXTI2_IRQHandler
  .word EXTI3_IRQHandler
  .word EXTI4_IRQHandler
  .word DMA0_Channel0_IRQHandler
  .word DMA0_Channel1_IRQHandler
  .word DMA0_Channel2_IRQHandler
  .word DMA0_Channel3_IRQHandler
  .word DMA0_Channel4_IRQHandler
  .word DMA0_Channel5_IRQHandler
  .word DMA0_Channel6_IRQHandler
  .word ADC0_1_IRQHandler
  .word CAN0_TX_IRQHandler
  .word CAN0_RX0_IRQHandler
  .word CAN0_RX1_IRQHandler
  .word CAN0_EWMC_IRQHandler
  .word EXTI5_9_IRQHandler
  .word TIMER0_BRK_IRQHandler
  .word TIMER0_UP_IRQHandler
  .word TIMER0_TRG_CMT_IRQHandler
  .word TIMER0_Channel_IRQHandler
  .word TIMER1_IRQHandler
  .word TIMER2_IRQHandler
  .word TIMER3_IRQHandler
  .word I2C0_EV_IRQHandler
  .word I2C0_ER_IRQHandler
  .word I2C1_EV_IRQHandler
  .word I2C1_ER_IRQHandler
  .word SPI0_IRQHandler
  .word SPI1_IRQHandler
  .word USART0_IRQHandler
  .word USART1_IRQHandler
  .word USART2_IRQHandler
  .word EXTI10_15_IRQHandler
  .word RTC_Alarm_IRQHandler
  .word USBFS_WKUP_IRQHandler
  .word 0
  .word 0
  .word 0
  .word 0
  .word 0
  .word EXMC_IRQHandler
  .word 0
  .word TIMER4_IRQHandler
  .word SPI2_IRQHandler
  .word UART3_IRQHandler
  .word UART4_IRQHandler
  .word TIMER5_IRQHandler
  .word TIMER6_IRQHandler
  .word DMA1_Channel0_IRQHandler
  .word DMA1_Channel1_IRQHandler
  .word DMA1_Channel2_IRQHandler
  .word DMA1_Channel3_IRQHandler
  .word DMA1_Channel4_IRQHandler
  .word 0
  .word 0
  .word CAN1_TX_IRQHandler
  .word CAN1_RX0_IRQHandler
  .word CAN1_RX1_IRQHandler
  .word CAN1_EWMC_IRQHandler
  .word USBFS_IRQHandler

  .section .init
  .globl Reset_Handler
  .type Reset_Handler,@function

Reset_Handler:

  la a0, _start
  li a1, 1
  slli a1, a1, 29
  bleu a1, a0, _start0800
  srli a1, a1, 2
  bleu a1, a0, _start0800
  la a0, _start0800
  add a0, a0, a1
  jr a0

_start0800:

  li t0, 0x200
  csrs 0x7d0, t0


  la t0, vector_base
  csrw 0x307, t0


  la t0, irq_entry
  csrw 0x7EC, t0
  csrs 0x7EC, 0x1


  la t0, trap_entry
  csrw 0x305, t0
# 245 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\GD32VF1xx\\Source\\GD32VF1xx_Startup.s"
  la t1, _start
  jalr t1
