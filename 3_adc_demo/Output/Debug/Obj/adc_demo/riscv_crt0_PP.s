# 1 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\riscv_crt0.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\riscv_crt0.s"
# 42 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\riscv_crt0.s"
.global __global_pointer$
__global_pointer$=__sdata_start__+0x800

  .section .init, "ax", %progbits

  .global _start
  .type _start, function
_start:
  .option push
  .option norelax
  la gp, __global_pointer$
  .option pop




  la t0, __stack_end__
  mv sp, t0
  la tp, __tbss_start__
  la a0, trap_entry
  csrw mtvec, a0
  csrw mcause, x0


  la t1, _init
  jalr t1


  la a0, __fast_load_start__
  la a1, __fast_start__
  la a2, __fast_end__
  bgeu a1, a2, 2f
1:
  lw t0, (a0)
  sw t0, (a1)
  addi a0, a0, 4
  addi a1, a1, 4
  bltu a1, a2, 1b
2:


  la a0, __data_load_start__
  la a1, __data_start__
  la a2, __data_end__
  bgeu a1, a2, 2f
1:
  lw t0, (a0)
  sw t0, (a1)
  addi a0, a0, 4
  addi a1, a1, 4
  bltu a1, a2, 1b
2:


  la a0, __tdata_load_start__
  la a1, __tdata_start__
  la a2, __tdata_end__
  bgeu a1, a2, 2f
1:
  lw t0, (a0)
  sw t0, (a1)
  addi a0, a0, 4
  addi a1, a1, 4
  bltu a1, a2, 1b
2:


  la a0, __sdata_load_start__
  la a1, __sdata_start__
  la a2, __sdata_end__
  bgeu a1, a2, 2f
1:
  lw t0, (a0)
  sw t0, (a1)
  addi a0, a0, 4
  addi a1, a1, 4
  bltu a1, a2, 1b
2:


  la a0, __rodata_load_start__
  la a1, __rodata_start__
  beq a0, a1, 2f
  la a2, __rodata_end__
  bgeu a1, a2, 2f
1:
  lw t0, (a0)
  sw t0, (a1)
  addi a0, a0, 4
  addi a1, a1, 4
  bltu a1, a2, 1b
2:


  la a0, __bss_start__
  la a1, __bss_end__
  bgeu a0, a1, 2f
1:
  sw zero, (a0)
  addi a0, a0, 4
  bltu a0, a1, 1b
2:


  la a0, __tbss_start__
  la a1, __tbss_end__
  bgeu a0, a1, 2f
1:
  sw zero, (a0)
  addi a0, a0, 4
  bltu a0, a1, 1b
2:


  la a0, __sbss_start__
  la a1, __sbss_end__
  bgeu a0, a1, 2f
1:
  sw zero, (a0)
  addi a0, a0, 4
  bltu a0, a1, 1b
2:



  la a0, __heap_start__
  la a1, __heap_end__
  sub a1, a1, a0
  sw zero, 0(a0)
  sw a1, 4(a0)
1:


  .global start
  .type start, function
start:


  la s0, __ctors_start__
  la s1, __ctors_end__
1:
  beq s0, s1, 2f




  lw t1, 0(s0)
  addi s0, s0, 4

  jalr t1
  j 1b
2:
# 204 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\riscv_crt0.s"
  li a0, 0
  li a1, 0

  la t1, main
  jalr t1

  .global exit
  .type exit, function
exit:
# 243 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\riscv_crt0.s"
  la t1, _fini
  jalr t1


exit_loop:
  j .





  .section .text.trap_entry, "ax", %progbits
  .global trap_entry
  .align 2
trap_entry:
  addi sp, sp, -(1+3+8+4)*4
  sw ra, 0*4(sp)
  sw t0, 1*4(sp)
  sw t1, 2*4(sp)
  sw t2, 3*4(sp)
  sw a0, 4*4(sp)
  sw a1, 5*4(sp)
  sw a2, 6*4(sp)
  sw a3, 7*4(sp)
  sw a4, 8*4(sp)
  sw a5, 9*4(sp)

  sw a6, 10*4(sp)
  sw a7, 11*4(sp)
  sw t3, 12*4(sp)
  sw t4, 13*4(sp)
  sw t5, 14*4(sp)
  sw t6, 15*4(sp)


  csrr a0, mcause
  csrr a1, mepc

  la t1, handle_trap
  jalr t1
  csrw mepc, a0

  lw ra, 0*4(sp)
  lw t0, 1*4(sp)
  lw t1, 2*4(sp)
  lw t2, 3*4(sp)
  lw a0, 4*4(sp)
  lw a1, 5*4(sp)
  lw a2, 6*4(sp)
  lw a3, 7*4(sp)
  lw a4, 8*4(sp)
  lw a5, 9*4(sp)

  lw a6, 10*4(sp)
  lw a7, 11*4(sp)
  lw t3, 12*4(sp)
  lw t4, 13*4(sp)
  lw t5, 14*4(sp)
  lw t6, 15*4(sp)


  addi sp, sp, (1+3+8+4)*4
  mret

  .weak handle_trap
handle_trap:
  j .

  .weak _init
 _init:
   ret

  .weak _fini
 _fini:
   ret



.macro HELPER helper_name
  .section .text.\helper_name, "ax", %progbits
  .weak \helper_name

  .align 1



\helper_name:
  .type \helper_name,@function
.endm

HELPER abort
  j .
HELPER __assert
  j .
HELPER __sync_synchronize
  ret
# 347 "C:\\dev\\riscv\\fun_with_rv\\adc_demo\\riscv_crt0.s"
  .section .stack, "wa", %nobits
  .section .heap, "wa", %nobits
