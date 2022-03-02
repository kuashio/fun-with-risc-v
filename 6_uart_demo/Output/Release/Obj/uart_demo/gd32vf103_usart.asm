	.file	"gd32vf103_usart.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.section	.text.usart_deinit,"ax",@progbits
	.align	1
	.globl	usart_deinit
	.type	usart_deinit, @function
usart_deinit:
.LFB0:
	.file 1 "C:\\dev\\riscv\\fun_with_rv\\8_uart_demo\\GD32VF1xx\\Device\\Source\\gd32vf103_usart.c"
	.loc 1 46 1
.LVL0:
	.loc 1 47 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-16
.LCFI0:
	.loc 1 47 5
	li	a5,1073762304
	.loc 1 46 1
	sw	ra,12(sp)
.LCFI1:
	.loc 1 47 5
	addi	a4,a5,-1024
	beq	a0,a4,.L2
	bleu	a0,a4,.L10
	beq	a0,a5,.L7
	li	a5,1073823744
	addi	a5,a5,-2048
	bne	a0,a5,.L1
	.loc 1 50 9 is_stmt 1
	li	a0,782
.LVL1:
	call	rcu_periph_reset_enable
.LVL2:
	.loc 1 51 9
	.loc 1 76 1 is_stmt 0
	lw	ra,12(sp)
.LCFI2:
	.loc 1 51 9
	li	a0,782
	.loc 1 76 1
	addi	sp,sp,16
.LCFI3:
	.loc 1 51 9
	tail	rcu_periph_reset_disable
.LVL3:
.L10:
.LCFI4:
	.loc 1 47 5
	li	a4,1073758208
	addi	a4,a4,1024
	beq	a0,a4,.L4
	addi	a5,a5,-2048
	bne	a0,a5,.L1
	.loc 1 60 9 is_stmt 1
	li	a0,1042
.LVL4:
	call	rcu_periph_reset_enable
.LVL5:
	.loc 1 61 9
	.loc 1 76 1 is_stmt 0
	lw	ra,12(sp)
.LCFI5:
	.loc 1 61 9
	li	a0,1042
	.loc 1 76 1
	addi	sp,sp,16
.LCFI6:
	.loc 1 61 9
	tail	rcu_periph_reset_disable
.LVL6:
.L2:
.LCFI7:
	.loc 1 65 9 is_stmt 1
	li	a0,1043
.LVL7:
	call	rcu_periph_reset_enable
.LVL8:
	.loc 1 66 9
	.loc 1 76 1 is_stmt 0
	lw	ra,12(sp)
.LCFI8:
	.loc 1 66 9
	li	a0,1043
	.loc 1 76 1
	addi	sp,sp,16
.LCFI9:
	.loc 1 66 9
	tail	rcu_periph_reset_disable
.LVL9:
.L7:
.LCFI10:
	.loc 1 70 9 is_stmt 1
	li	a0,1044
.LVL10:
	call	rcu_periph_reset_enable
.LVL11:
	.loc 1 71 9
	.loc 1 76 1 is_stmt 0
	lw	ra,12(sp)
.LCFI11:
	.loc 1 71 9
	li	a0,1044
	.loc 1 76 1
	addi	sp,sp,16
.LCFI12:
	.loc 1 71 9
	tail	rcu_periph_reset_disable
.LVL12:
.L1:
.LCFI13:
	.loc 1 76 1
	lw	ra,12(sp)
.LCFI14:
	addi	sp,sp,16
.LCFI15:
	jr	ra
.L4:
.LCFI16:
	.loc 1 55 9 is_stmt 1
	li	a0,1041
.LVL13:
	call	rcu_periph_reset_enable
.LVL14:
	.loc 1 56 9
	.loc 1 76 1 is_stmt 0
	lw	ra,12(sp)
.LCFI17:
	.loc 1 56 9
	li	a0,1041
	.loc 1 76 1
	addi	sp,sp,16
.LCFI18:
	.loc 1 56 9
	tail	rcu_periph_reset_disable
.LVL15:
.LFE0:
	.size	usart_deinit, .-usart_deinit
	.section	.text.usart_baudrate_set,"ax",@progbits
	.align	1
	.globl	usart_baudrate_set
	.type	usart_baudrate_set, @function
usart_baudrate_set:
.LFB1:
	.loc 1 86 1 is_stmt 1
.LVL16:
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 86 1 is_stmt 0
	addi	sp,sp,-16
.LCFI19:
	.loc 1 88 5
	li	a5,1073762304
	.loc 1 86 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
.LCFI20:
	.loc 1 88 5
	addi	a4,a5,-1024
	.loc 1 86 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 88 5
	beq	a0,a4,.L12
	bleu	a0,a4,.L20
	beq	a0,a5,.L12
	li	a5,1073823744
	addi	a5,a5,-2048
	bne	a0,a5,.L15
	.loc 1 92 10 is_stmt 1
	.loc 1 92 15 is_stmt 0
	li	a0,3
.LVL17:
	call	rcu_clock_freq_get
.LVL18:
	.loc 1 93 10 is_stmt 1
.L14:
	.loc 1 114 5
	.loc 1 115 5
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 114 25 is_stmt 0
	srli	a5,s1,1
	.loc 1 114 17
	add	a0,a5,a0
.LVL19:
	.loc 1 114 10
	divu	a1,a0,s1
.LVL20:
	.loc 1 118 1
	lw	ra,12(sp)
.LCFI21:
	lw	s1,4(sp)
.LCFI22:
.LVL21:
	.loc 1 117 83
	slli	a1,a1,16
.LVL22:
	srli	a1,a1,16
	.loc 1 117 30
	sw	a1,8(s0)
	.loc 1 118 1
	lw	s0,8(sp)
.LCFI23:
.LVL23:
	addi	sp,sp,16
.LCFI24:
	jr	ra
.LVL24:
.L20:
.LCFI25:
	.loc 1 88 5
	li	a5,-1073758208
	addi	a5,a5,-1024
	add	a5,a0,a5
	andi	a5,a5,-1025
	beq	a5,zero,.L12
.L15:
	li	a0,0
	j	.L14
.L12:
	.loc 1 96 10 is_stmt 1
	.loc 1 96 15 is_stmt 0
	li	a0,2
	call	rcu_clock_freq_get
.LVL25:
	.loc 1 97 10 is_stmt 1
	j	.L14
.LFE1:
	.size	usart_baudrate_set, .-usart_baudrate_set
	.section	.text.usart_parity_config,"ax",@progbits
	.align	1
	.globl	usart_parity_config
	.type	usart_parity_config, @function
usart_parity_config:
.LFB2:
	.loc 1 132 1
.LVL26:
	.loc 1 134 5
	.loc 1 134 30 is_stmt 0
	lw	a4,12(a0)
	andi	a4,a4,-1537
	sw	a4,12(a0)
	.loc 1 136 5 is_stmt 1
	.loc 1 136 30 is_stmt 0
	lw	a5,12(a0)
	or	a5,a5,a1
	sw	a5,12(a0)
	.loc 1 137 1
	ret
.LFE2:
	.size	usart_parity_config, .-usart_parity_config
	.section	.text.usart_word_length_set,"ax",@progbits
	.align	1
	.globl	usart_word_length_set
	.type	usart_word_length_set, @function
usart_word_length_set:
.LFB3:
	.loc 1 150 1 is_stmt 1
.LVL27:
	.loc 1 152 5
	.loc 1 152 30 is_stmt 0
	lw	a5,12(a0)
	li	a4,-4096
	addi	a4,a4,-1
	and	a5,a5,a4
	sw	a5,12(a0)
	.loc 1 154 5 is_stmt 1
	.loc 1 154 30 is_stmt 0
	lw	a5,12(a0)
	or	a5,a5,a1
	sw	a5,12(a0)
	.loc 1 155 1
	ret
.LFE3:
	.size	usart_word_length_set, .-usart_word_length_set
	.section	.text.usart_stop_bit_set,"ax",@progbits
	.align	1
	.globl	usart_stop_bit_set
	.type	usart_stop_bit_set, @function
usart_stop_bit_set:
.LFB4:
	.loc 1 170 1 is_stmt 1
.LVL28:
	.loc 1 172 5
	.loc 1 172 30 is_stmt 0
	lw	a5,16(a0)
	li	a4,-12288
	addi	a4,a4,-1
	and	a5,a5,a4
	sw	a5,16(a0)
	.loc 1 174 5 is_stmt 1
	.loc 1 174 30 is_stmt 0
	lw	a5,16(a0)
	or	a5,a5,a1
	sw	a5,16(a0)
	.loc 1 175 1
	ret
.LFE4:
	.size	usart_stop_bit_set, .-usart_stop_bit_set
	.section	.text.usart_enable,"ax",@progbits
	.align	1
	.globl	usart_enable
	.type	usart_enable, @function
usart_enable:
.LFB5:
	.loc 1 184 1 is_stmt 1
.LVL29:
	.loc 1 185 5
	.loc 1 185 30 is_stmt 0
	lw	a5,12(a0)
	li	a4,8192
	or	a5,a5,a4
	sw	a5,12(a0)
	.loc 1 186 1
	ret
.LFE5:
	.size	usart_enable, .-usart_enable
	.section	.text.usart_disable,"ax",@progbits
	.align	1
	.globl	usart_disable
	.type	usart_disable, @function
usart_disable:
.LFB6:
	.loc 1 195 1 is_stmt 1
.LVL30:
	.loc 1 196 5
	.loc 1 196 30 is_stmt 0
	lw	a5,12(a0)
	li	a4,-8192
	addi	a4,a4,-1
	and	a5,a5,a4
	sw	a5,12(a0)
	.loc 1 197 1
	ret
.LFE6:
	.size	usart_disable, .-usart_disable
	.section	.text.usart_transmit_config,"ax",@progbits
	.align	1
	.globl	usart_transmit_config
	.type	usart_transmit_config, @function
usart_transmit_config:
.LFB7:
	.loc 1 210 1 is_stmt 1
.LVL31:
	.loc 1 211 5
	.loc 1 213 5
	.loc 1 213 9 is_stmt 0
	lw	a5,12(a0)
.LVL32:
	.loc 1 214 5 is_stmt 1
	.loc 1 214 9 is_stmt 0
	andi	a5,a5,-9
.LVL33:
	.loc 1 215 5 is_stmt 1
	.loc 1 215 9 is_stmt 0
	or	a5,a5,a1
.LVL34:
	.loc 1 217 5 is_stmt 1
	.loc 1 217 30 is_stmt 0
	sw	a5,12(a0)
	.loc 1 218 1
	ret
.LFE7:
	.size	usart_transmit_config, .-usart_transmit_config
	.section	.text.usart_receive_config,"ax",@progbits
	.align	1
	.globl	usart_receive_config
	.type	usart_receive_config, @function
usart_receive_config:
.LFB8:
	.loc 1 231 1 is_stmt 1
.LVL35:
	.loc 1 232 5
	.loc 1 234 5
	.loc 1 234 9 is_stmt 0
	lw	a5,12(a0)
.LVL36:
	.loc 1 235 5 is_stmt 1
	.loc 1 235 9 is_stmt 0
	andi	a5,a5,-5
.LVL37:
	.loc 1 236 5 is_stmt 1
	.loc 1 236 9 is_stmt 0
	or	a5,a5,a1
.LVL38:
	.loc 1 238 5 is_stmt 1
	.loc 1 238 30 is_stmt 0
	sw	a5,12(a0)
	.loc 1 239 1
	ret
.LFE8:
	.size	usart_receive_config, .-usart_receive_config
	.section	.text.usart_data_transmit,"ax",@progbits
	.align	1
	.globl	usart_data_transmit
	.type	usart_data_transmit, @function
usart_data_transmit:
.LFB9:
	.loc 1 249 1 is_stmt 1
.LVL39:
	.loc 1 250 5
	.loc 1 250 48 is_stmt 0
	andi	a1,a1,511
.LVL40:
	.loc 1 250 30
	sw	a1,4(a0)
	.loc 1 251 1
	ret
.LFE9:
	.size	usart_data_transmit, .-usart_data_transmit
	.section	.text.usart_data_receive,"ax",@progbits
	.align	1
	.globl	usart_data_receive
	.type	usart_data_receive, @function
usart_data_receive:
.LFB10:
	.loc 1 260 1 is_stmt 1
.LVL41:
	.loc 1 261 5
	.loc 1 261 23 is_stmt 0
	lw	a0,4(a0)
.LVL42:
	.loc 1 262 1
	andi	a0,a0,511
	ret
.LFE10:
	.size	usart_data_receive, .-usart_data_receive
	.section	.text.usart_address_config,"ax",@progbits
	.align	1
	.globl	usart_address_config
	.type	usart_address_config, @function
usart_address_config:
.LFB11:
	.loc 1 272 1 is_stmt 1
.LVL43:
	.loc 1 273 5
	.loc 1 273 30 is_stmt 0
	lw	a5,16(a0)
	.loc 1 274 50
	andi	a1,a1,15
.LVL44:
	.loc 1 273 30
	andi	a5,a5,-16
	sw	a5,16(a0)
	.loc 1 274 5 is_stmt 1
	.loc 1 274 30 is_stmt 0
	lw	a5,16(a0)
	or	a1,a1,a5
	sw	a1,16(a0)
	.loc 1 275 1
	ret
.LFE11:
	.size	usart_address_config, .-usart_address_config
	.section	.text.usart_mute_mode_enable,"ax",@progbits
	.align	1
	.globl	usart_mute_mode_enable
	.type	usart_mute_mode_enable, @function
usart_mute_mode_enable:
.LFB12:
	.loc 1 284 1 is_stmt 1
.LVL45:
	.loc 1 285 5
	.loc 1 285 30 is_stmt 0
	lw	a5,12(a0)
	ori	a5,a5,2
	sw	a5,12(a0)
	.loc 1 286 1
	ret
.LFE12:
	.size	usart_mute_mode_enable, .-usart_mute_mode_enable
	.section	.text.usart_mute_mode_disable,"ax",@progbits
	.align	1
	.globl	usart_mute_mode_disable
	.type	usart_mute_mode_disable, @function
usart_mute_mode_disable:
.LFB13:
	.loc 1 295 1 is_stmt 1
.LVL46:
	.loc 1 296 5
	.loc 1 296 30 is_stmt 0
	lw	a5,12(a0)
	andi	a5,a5,-3
	sw	a5,12(a0)
	.loc 1 297 1
	ret
.LFE13:
	.size	usart_mute_mode_disable, .-usart_mute_mode_disable
	.section	.text.usart_mute_mode_wakeup_config,"ax",@progbits
	.align	1
	.globl	usart_mute_mode_wakeup_config
	.type	usart_mute_mode_wakeup_config, @function
usart_mute_mode_wakeup_config:
.LFB14:
	.loc 1 310 1 is_stmt 1
.LVL47:
	.loc 1 311 5
	.loc 1 311 30 is_stmt 0
	lw	a5,12(a0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a5,a5,a4
	sw	a5,12(a0)
	.loc 1 312 5 is_stmt 1
	.loc 1 312 30 is_stmt 0
	lw	a5,12(a0)
	or	a5,a5,a1
	sw	a5,12(a0)
	.loc 1 313 1
	ret
.LFE14:
	.size	usart_mute_mode_wakeup_config, .-usart_mute_mode_wakeup_config
	.section	.text.usart_lin_mode_enable,"ax",@progbits
	.align	1
	.globl	usart_lin_mode_enable
	.type	usart_lin_mode_enable, @function
usart_lin_mode_enable:
.LFB15:
	.loc 1 322 1 is_stmt 1
.LVL48:
	.loc 1 323 5
	.loc 1 323 30 is_stmt 0
	lw	a5,16(a0)
	li	a4,16384
	or	a5,a5,a4
	sw	a5,16(a0)
	.loc 1 324 1
	ret
.LFE15:
	.size	usart_lin_mode_enable, .-usart_lin_mode_enable
	.section	.text.usart_lin_mode_disable,"ax",@progbits
	.align	1
	.globl	usart_lin_mode_disable
	.type	usart_lin_mode_disable, @function
usart_lin_mode_disable:
.LFB16:
	.loc 1 333 1 is_stmt 1
.LVL49:
	.loc 1 334 5
	.loc 1 334 30 is_stmt 0
	lw	a5,16(a0)
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
	sw	a5,16(a0)
	.loc 1 335 1
	ret
.LFE16:
	.size	usart_lin_mode_disable, .-usart_lin_mode_disable
	.section	.text.usart_lin_break_detection_length_config,"ax",@progbits
	.align	1
	.globl	usart_lin_break_detection_length_config
	.type	usart_lin_break_detection_length_config, @function
usart_lin_break_detection_length_config:
.LFB17:
	.loc 1 348 1 is_stmt 1
.LVL50:
	.loc 1 349 5
	.loc 1 349 30 is_stmt 0
	lw	a5,16(a0)
	.loc 1 350 51
	andi	a1,a1,32
.LVL51:
	.loc 1 349 30
	andi	a5,a5,-33
	sw	a5,16(a0)
	.loc 1 350 5 is_stmt 1
	.loc 1 350 30 is_stmt 0
	lw	a5,16(a0)
	or	a1,a1,a5
	sw	a1,16(a0)
	.loc 1 351 1
	ret
.LFE17:
	.size	usart_lin_break_detection_length_config, .-usart_lin_break_detection_length_config
	.section	.text.usart_send_break,"ax",@progbits
	.align	1
	.globl	usart_send_break
	.type	usart_send_break, @function
usart_send_break:
.LFB18:
	.loc 1 360 1 is_stmt 1
.LVL52:
	.loc 1 361 5
	.loc 1 361 30 is_stmt 0
	lw	a5,12(a0)
	ori	a5,a5,1
	sw	a5,12(a0)
	.loc 1 362 1
	ret
.LFE18:
	.size	usart_send_break, .-usart_send_break
	.section	.text.usart_halfduplex_enable,"ax",@progbits
	.align	1
	.globl	usart_halfduplex_enable
	.type	usart_halfduplex_enable, @function
usart_halfduplex_enable:
.LFB19:
	.loc 1 371 1 is_stmt 1
.LVL53:
	.loc 1 372 5
	.loc 1 372 30 is_stmt 0
	lw	a5,20(a0)
	ori	a5,a5,8
	sw	a5,20(a0)
	.loc 1 373 1
	ret
.LFE19:
	.size	usart_halfduplex_enable, .-usart_halfduplex_enable
	.section	.text.usart_halfduplex_disable,"ax",@progbits
	.align	1
	.globl	usart_halfduplex_disable
	.type	usart_halfduplex_disable, @function
usart_halfduplex_disable:
.LFB20:
	.loc 1 382 1 is_stmt 1
.LVL54:
	.loc 1 383 5
	.loc 1 383 30 is_stmt 0
	lw	a5,20(a0)
	andi	a5,a5,-9
	sw	a5,20(a0)
	.loc 1 384 1
	ret
.LFE20:
	.size	usart_halfduplex_disable, .-usart_halfduplex_disable
	.section	.text.usart_synchronous_clock_enable,"ax",@progbits
	.align	1
	.globl	usart_synchronous_clock_enable
	.type	usart_synchronous_clock_enable, @function
usart_synchronous_clock_enable:
.LFB21:
	.loc 1 393 1 is_stmt 1
.LVL55:
	.loc 1 394 5
	.loc 1 394 30 is_stmt 0
	lw	a5,16(a0)
	li	a4,4096
	addi	a4,a4,-2048
	or	a5,a5,a4
	sw	a5,16(a0)
	.loc 1 395 1
	ret
.LFE21:
	.size	usart_synchronous_clock_enable, .-usart_synchronous_clock_enable
	.section	.text.usart_synchronous_clock_disable,"ax",@progbits
	.align	1
	.globl	usart_synchronous_clock_disable
	.type	usart_synchronous_clock_disable, @function
usart_synchronous_clock_disable:
.LFB22:
	.loc 1 404 1 is_stmt 1
.LVL56:
	.loc 1 405 5
	.loc 1 405 30 is_stmt 0
	lw	a5,16(a0)
	li	a4,-4096
	addi	a4,a4,2047
	and	a5,a5,a4
	sw	a5,16(a0)
	.loc 1 406 1
	ret
.LFE22:
	.size	usart_synchronous_clock_disable, .-usart_synchronous_clock_disable
	.section	.text.usart_synchronous_clock_config,"ax",@progbits
	.align	1
	.globl	usart_synchronous_clock_config
	.type	usart_synchronous_clock_config, @function
usart_synchronous_clock_config:
.LFB23:
	.loc 1 427 1 is_stmt 1
.LVL57:
	.loc 1 428 5
	.loc 1 431 5
	.loc 1 431 9 is_stmt 0
	lw	a5,16(a0)
.LVL58:
	.loc 1 432 5 is_stmt 1
	.loc 1 434 55 is_stmt 0
	andi	a2,a2,512
.LVL59:
	.loc 1 434 80
	andi	a3,a3,1024
.LVL60:
	.loc 1 434 62
	or	a2,a2,a3
	.loc 1 434 29
	andi	a1,a1,256
.LVL61:
	.loc 1 432 9
	andi	a5,a5,-1793
.LVL62:
	.loc 1 434 5 is_stmt 1
	.loc 1 434 62 is_stmt 0
	or	a2,a2,a1
	.loc 1 434 9
	or	a2,a2,a5
.LVL63:
	.loc 1 436 5 is_stmt 1
	.loc 1 436 30 is_stmt 0
	sw	a2,16(a0)
	.loc 1 437 1
	ret
.LFE23:
	.size	usart_synchronous_clock_config, .-usart_synchronous_clock_config
	.section	.text.usart_guard_time_config,"ax",@progbits
	.align	1
	.globl	usart_guard_time_config
	.type	usart_guard_time_config, @function
usart_guard_time_config:
.LFB24:
	.loc 1 447 1 is_stmt 1
.LVL64:
	.loc 1 448 5
	.loc 1 448 28 is_stmt 0
	lw	a5,24(a0)
	li	a4,-65536
	addi	a4,a4,255
	and	a5,a5,a4
	sw	a5,24(a0)
	.loc 1 449 5 is_stmt 1
	.loc 1 449 28 is_stmt 0
	lw	a4,24(a0)
	.loc 1 449 46
	li	a5,65536
	.loc 1 449 55
	slli	a1,a1,8
.LVL65:
	.loc 1 449 46
	addi	a5,a5,-1
	and	a1,a1,a5
	.loc 1 449 28
	or	a1,a1,a4
	sw	a1,24(a0)
	.loc 1 450 1
	ret
.LFE24:
	.size	usart_guard_time_config, .-usart_guard_time_config
	.section	.text.usart_smartcard_mode_enable,"ax",@progbits
	.align	1
	.globl	usart_smartcard_mode_enable
	.type	usart_smartcard_mode_enable, @function
usart_smartcard_mode_enable:
.LFB25:
	.loc 1 459 1 is_stmt 1
.LVL66:
	.loc 1 460 5
	.loc 1 460 30 is_stmt 0
	lw	a5,20(a0)
	ori	a5,a5,32
	sw	a5,20(a0)
	.loc 1 461 1
	ret
.LFE25:
	.size	usart_smartcard_mode_enable, .-usart_smartcard_mode_enable
	.section	.text.usart_smartcard_mode_disable,"ax",@progbits
	.align	1
	.globl	usart_smartcard_mode_disable
	.type	usart_smartcard_mode_disable, @function
usart_smartcard_mode_disable:
.LFB26:
	.loc 1 470 1 is_stmt 1
.LVL67:
	.loc 1 471 5
	.loc 1 471 30 is_stmt 0
	lw	a5,20(a0)
	andi	a5,a5,-33
	sw	a5,20(a0)
	.loc 1 472 1
	ret
.LFE26:
	.size	usart_smartcard_mode_disable, .-usart_smartcard_mode_disable
	.section	.text.usart_smartcard_mode_nack_enable,"ax",@progbits
	.align	1
	.globl	usart_smartcard_mode_nack_enable
	.type	usart_smartcard_mode_nack_enable, @function
usart_smartcard_mode_nack_enable:
.LFB27:
	.loc 1 481 1 is_stmt 1
.LVL68:
	.loc 1 482 5
	.loc 1 482 30 is_stmt 0
	lw	a5,20(a0)
	ori	a5,a5,16
	sw	a5,20(a0)
	.loc 1 483 1
	ret
.LFE27:
	.size	usart_smartcard_mode_nack_enable, .-usart_smartcard_mode_nack_enable
	.section	.text.usart_smartcard_mode_nack_disable,"ax",@progbits
	.align	1
	.globl	usart_smartcard_mode_nack_disable
	.type	usart_smartcard_mode_nack_disable, @function
usart_smartcard_mode_nack_disable:
.LFB28:
	.loc 1 492 1 is_stmt 1
.LVL69:
	.loc 1 493 5
	.loc 1 493 30 is_stmt 0
	lw	a5,20(a0)
	andi	a5,a5,-17
	sw	a5,20(a0)
	.loc 1 494 1
	ret
.LFE28:
	.size	usart_smartcard_mode_nack_disable, .-usart_smartcard_mode_nack_disable
	.section	.text.usart_irda_mode_enable,"ax",@progbits
	.align	1
	.globl	usart_irda_mode_enable
	.type	usart_irda_mode_enable, @function
usart_irda_mode_enable:
.LFB29:
	.loc 1 503 1 is_stmt 1
.LVL70:
	.loc 1 504 5
	.loc 1 504 30 is_stmt 0
	lw	a5,20(a0)
	ori	a5,a5,2
	sw	a5,20(a0)
	.loc 1 505 1
	ret
.LFE29:
	.size	usart_irda_mode_enable, .-usart_irda_mode_enable
	.section	.text.usart_irda_mode_disable,"ax",@progbits
	.align	1
	.globl	usart_irda_mode_disable
	.type	usart_irda_mode_disable, @function
usart_irda_mode_disable:
.LFB30:
	.loc 1 514 1 is_stmt 1
.LVL71:
	.loc 1 515 5
	.loc 1 515 30 is_stmt 0
	lw	a5,20(a0)
	andi	a5,a5,-3
	sw	a5,20(a0)
	.loc 1 516 1
	ret
.LFE30:
	.size	usart_irda_mode_disable, .-usart_irda_mode_disable
	.section	.text.usart_prescaler_config,"ax",@progbits
	.align	1
	.globl	usart_prescaler_config
	.type	usart_prescaler_config, @function
usart_prescaler_config:
.LFB31:
	.loc 1 526 1 is_stmt 1
.LVL72:
	.loc 1 527 5
	.loc 1 527 28 is_stmt 0
	lw	a5,24(a0)
	andi	a5,a5,-256
	sw	a5,24(a0)
	.loc 1 528 5 is_stmt 1
	.loc 1 528 28 is_stmt 0
	lw	a5,24(a0)
	or	a1,a1,a5
.LVL73:
	sw	a1,24(a0)
	.loc 1 529 1
	ret
.LFE31:
	.size	usart_prescaler_config, .-usart_prescaler_config
	.section	.text.usart_irda_lowpower_config,"ax",@progbits
	.align	1
	.globl	usart_irda_lowpower_config
	.type	usart_irda_lowpower_config, @function
usart_irda_lowpower_config:
.LFB32:
	.loc 1 542 1 is_stmt 1
.LVL74:
	.loc 1 543 5
	.loc 1 543 30 is_stmt 0
	lw	a5,20(a0)
	.loc 1 544 50
	andi	a1,a1,4
.LVL75:
	.loc 1 543 30
	andi	a5,a5,-5
	sw	a5,20(a0)
	.loc 1 544 5 is_stmt 1
	.loc 1 544 30 is_stmt 0
	lw	a5,20(a0)
	or	a1,a1,a5
	sw	a1,20(a0)
	.loc 1 545 1
	ret
.LFE32:
	.size	usart_irda_lowpower_config, .-usart_irda_lowpower_config
	.section	.text.usart_hardware_flow_rts_config,"ax",@progbits
	.align	1
	.globl	usart_hardware_flow_rts_config
	.type	usart_hardware_flow_rts_config, @function
usart_hardware_flow_rts_config:
.LFB33:
	.loc 1 558 1 is_stmt 1
.LVL76:
	.loc 1 559 5
	.loc 1 561 5
	.loc 1 561 9 is_stmt 0
	lw	a5,20(a0)
.LVL77:
	.loc 1 562 5 is_stmt 1
	.loc 1 562 9 is_stmt 0
	andi	a5,a5,-257
.LVL78:
	.loc 1 563 5 is_stmt 1
	.loc 1 563 9 is_stmt 0
	or	a5,a5,a1
.LVL79:
	.loc 1 565 5 is_stmt 1
	.loc 1 565 30 is_stmt 0
	sw	a5,20(a0)
	.loc 1 566 1
	ret
.LFE33:
	.size	usart_hardware_flow_rts_config, .-usart_hardware_flow_rts_config
	.section	.text.usart_hardware_flow_cts_config,"ax",@progbits
	.align	1
	.globl	usart_hardware_flow_cts_config
	.type	usart_hardware_flow_cts_config, @function
usart_hardware_flow_cts_config:
.LFB34:
	.loc 1 579 1 is_stmt 1
.LVL80:
	.loc 1 580 5
	.loc 1 582 5
	.loc 1 582 9 is_stmt 0
	lw	a5,20(a0)
.LVL81:
	.loc 1 583 5 is_stmt 1
	.loc 1 583 9 is_stmt 0
	andi	a5,a5,-513
.LVL82:
	.loc 1 584 5 is_stmt 1
	.loc 1 584 9 is_stmt 0
	or	a5,a5,a1
.LVL83:
	.loc 1 586 5 is_stmt 1
	.loc 1 586 30 is_stmt 0
	sw	a5,20(a0)
	.loc 1 587 1
	ret
.LFE34:
	.size	usart_hardware_flow_cts_config, .-usart_hardware_flow_cts_config
	.section	.text.usart_dma_receive_config,"ax",@progbits
	.align	1
	.globl	usart_dma_receive_config
	.type	usart_dma_receive_config, @function
usart_dma_receive_config:
.LFB35:
	.loc 1 600 1 is_stmt 1
.LVL84:
	.loc 1 601 5
	.loc 1 603 5
	.loc 1 603 9 is_stmt 0
	lw	a5,20(a0)
.LVL85:
	.loc 1 604 5 is_stmt 1
	.loc 1 604 9 is_stmt 0
	andi	a5,a5,-65
.LVL86:
	.loc 1 605 5 is_stmt 1
	.loc 1 605 9 is_stmt 0
	or	a5,a5,a1
.LVL87:
	.loc 1 607 5 is_stmt 1
	.loc 1 607 30 is_stmt 0
	sw	a5,20(a0)
	.loc 1 608 1
	ret
.LFE35:
	.size	usart_dma_receive_config, .-usart_dma_receive_config
	.section	.text.usart_dma_transmit_config,"ax",@progbits
	.align	1
	.globl	usart_dma_transmit_config
	.type	usart_dma_transmit_config, @function
usart_dma_transmit_config:
.LFB36:
	.loc 1 621 1 is_stmt 1
.LVL88:
	.loc 1 622 5
	.loc 1 624 5
	.loc 1 624 9 is_stmt 0
	lw	a5,20(a0)
.LVL89:
	.loc 1 625 5 is_stmt 1
	.loc 1 625 9 is_stmt 0
	andi	a5,a5,-129
.LVL90:
	.loc 1 626 5 is_stmt 1
	.loc 1 626 9 is_stmt 0
	or	a5,a5,a1
.LVL91:
	.loc 1 628 5 is_stmt 1
	.loc 1 628 30 is_stmt 0
	sw	a5,20(a0)
	.loc 1 629 1
	ret
.LFE36:
	.size	usart_dma_transmit_config, .-usart_dma_transmit_config
	.section	.text.usart_flag_get,"ax",@progbits
	.align	1
	.globl	usart_flag_get
	.type	usart_flag_get, @function
usart_flag_get:
.LFB37:
	.loc 1 650 1 is_stmt 1
.LVL92:
	.loc 1 651 5
	.loc 1 651 18 is_stmt 0
	srli	a5,a1,6
	add	a5,a5,a0
	lw	a0,0(a5)
.LVL93:
	.loc 1 651 14
	srl	a0,a0,a1
	.loc 1 656 1
	andi	a0,a0,1
	ret
.LFE37:
	.size	usart_flag_get, .-usart_flag_get
	.section	.text.usart_flag_clear,"ax",@progbits
	.align	1
	.globl	usart_flag_clear
	.type	usart_flag_clear, @function
usart_flag_clear:
.LFB38:
	.loc 1 671 1 is_stmt 1
.LVL94:
	.loc 1 672 5
	.loc 1 672 39 is_stmt 0
	srli	a4,a1,6
	add	a0,a4,a0
.LVL95:
	lw	a4,0(a0)
	.loc 1 672 43
	li	a5,1
	sll	a5,a5,a1
	.loc 1 672 42
	not	a5,a5
	.loc 1 672 39
	and	a5,a5,a4
	sw	a5,0(a0)
	.loc 1 673 1
	ret
.LFE38:
	.size	usart_flag_clear, .-usart_flag_clear
	.section	.text.usart_interrupt_enable,"ax",@progbits
	.align	1
	.globl	usart_interrupt_enable
	.type	usart_interrupt_enable, @function
usart_interrupt_enable:
.LFB39:
	.loc 1 692 1 is_stmt 1
.LVL96:
	.loc 1 693 5
	.loc 1 693 44 is_stmt 0
	srli	a5,a1,6
	andi	a5,a5,1023
	add	a0,a5,a0
.LVL97:
	lw	a4,0(a0)
	.loc 1 693 47
	li	a5,1
	sll	a1,a5,a1
.LVL98:
	.loc 1 693 44
	or	a1,a1,a4
	sw	a1,0(a0)
	.loc 1 694 1
	ret
.LFE39:
	.size	usart_interrupt_enable, .-usart_interrupt_enable
	.section	.text.usart_interrupt_disable,"ax",@progbits
	.align	1
	.globl	usart_interrupt_disable
	.type	usart_interrupt_disable, @function
usart_interrupt_disable:
.LFB40:
	.loc 1 713 1 is_stmt 1
.LVL99:
	.loc 1 714 5
	.loc 1 714 44 is_stmt 0
	srli	a4,a1,6
	andi	a4,a4,1023
	add	a0,a4,a0
.LVL100:
	lw	a4,0(a0)
	.loc 1 714 48
	li	a5,1
	sll	a5,a5,a1
	.loc 1 714 47
	not	a5,a5
	.loc 1 714 44
	and	a5,a5,a4
	sw	a5,0(a0)
	.loc 1 715 1
	ret
.LFE40:
	.size	usart_interrupt_disable, .-usart_interrupt_disable
	.section	.text.usart_interrupt_flag_get,"ax",@progbits
	.align	1
	.globl	usart_interrupt_flag_get
	.type	usart_interrupt_flag_get, @function
usart_interrupt_flag_get:
.LFB41:
	.loc 1 737 1 is_stmt 1
.LVL101:
	.loc 1 738 5
	.loc 1 740 5
	.loc 1 740 18 is_stmt 0
	srli	a5,a1,6
	.loc 1 742 19
	srli	a4,a1,22
	.loc 1 740 18
	andi	a5,a5,1023
	add	a5,a5,a0
	.loc 1 742 19
	add	a0,a4,a0
.LVL102:
	.loc 1 740 18
	lw	a3,0(a5)
.LVL103:
	.loc 1 742 5 is_stmt 1
	.loc 1 742 19 is_stmt 0
	lw	a4,0(a0)
	.loc 1 742 60
	li	a5,1
	srli	a0,a1,16
	sll	a0,a5,a0
	.loc 1 742 16
	and	a0,a0,a4
.LVL104:
	.loc 1 744 5 is_stmt 1
	.loc 1 744 7 is_stmt 0
	beq	a0,zero,.L60
	.loc 1 740 58 discriminator 1
	sll	a0,a5,a1
.LVL105:
	.loc 1 740 15 discriminator 1
	and	a0,a0,a3
	.loc 1 744 19 discriminator 1
	snez	a0,a0
.L60:
	.loc 1 749 1
	ret
.LFE41:
	.size	usart_interrupt_flag_get, .-usart_interrupt_flag_get
	.section	.text.usart_interrupt_flag_clear,"ax",@progbits
	.align	1
	.globl	usart_interrupt_flag_clear
	.type	usart_interrupt_flag_clear, @function
usart_interrupt_flag_clear:
.LFB42:
	.loc 1 764 1 is_stmt 1
.LVL106:
	.loc 1 765 5
	.loc 1 765 44 is_stmt 0
	srli	a5,a1,22
	add	a0,a5,a0
.LVL107:
	lw	a4,0(a0)
	.loc 1 765 48
	srli	a1,a1,16
.LVL108:
	li	a5,1
	sll	a5,a5,a1
	.loc 1 765 47
	not	a5,a5
	.loc 1 765 44
	and	a5,a5,a4
	sw	a5,0(a0)
	.loc 1 766 1
	ret
.LFE42:
	.size	usart_interrupt_flag_clear, .-usart_interrupt_flag_clear
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x81
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xa
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xa
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xa
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xa
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xa
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.byte	0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI19-.LFB1
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x88
	.byte	0x2
	.byte	0x89
	.byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xa
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xc9
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xb
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.align	2
.LEFDE84:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for RISC-V 6.12a/include/stdint.h"
	.file 3 "C:/dev/riscv/fun_with_rv/8_uart_demo/GD32VF1xx/Device/Include/gd32vf103.h"
	.file 4 "C:/dev/riscv/fun_with_rv/8_uart_demo/GD32VF1xx/Device/Include/gd32vf103_rcu.h"
	.file 5 "C:/dev/riscv/fun_with_rv/8_uart_demo/GD32VF1xx/Device/Include/gd32vf103_usart.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc40
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF132
	.byte	0xc
	.4byte	.LASF133
	.4byte	.LASF134
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd6
	.byte	0x1c
	.4byte	0x2c
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd9
	.byte	0x1c
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0xdb
	.byte	0x1c
	.4byte	0x25
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0xb5
	.byte	0xe
	.4byte	0xac
	.byte	0x6
	.4byte	.LASF11
	.byte	0
	.byte	0x7
	.string	"SET"
	.byte	0x1
	.byte	0x8
	.string	"MAX"
	.4byte	0x7fffffff
	.byte	0
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xb5
	.byte	0x34
	.4byte	0x88
	.byte	0x9
	.byte	0x7
	.byte	0x2
	.4byte	0x60
	.byte	0x4
	.2byte	0x139
	.byte	0xe
	.4byte	0x1a8
	.byte	0xa
	.4byte	.LASF13
	.2byte	0xa0c
	.byte	0xa
	.4byte	.LASF14
	.2byte	0x400
	.byte	0xa
	.4byte	.LASF15
	.2byte	0x401
	.byte	0xa
	.4byte	.LASF16
	.2byte	0x402
	.byte	0xa
	.4byte	.LASF17
	.2byte	0x403
	.byte	0xa
	.4byte	.LASF18
	.2byte	0x404
	.byte	0xa
	.4byte	.LASF19
	.2byte	0x405
	.byte	0xa
	.4byte	.LASF20
	.2byte	0x40b
	.byte	0xa
	.4byte	.LASF21
	.2byte	0x40e
	.byte	0xa
	.4byte	.LASF22
	.2byte	0x40f
	.byte	0xa
	.4byte	.LASF23
	.2byte	0x411
	.byte	0xa
	.4byte	.LASF24
	.2byte	0x412
	.byte	0xa
	.4byte	.LASF25
	.2byte	0x413
	.byte	0xa
	.4byte	.LASF26
	.2byte	0x414
	.byte	0xa
	.4byte	.LASF27
	.2byte	0x415
	.byte	0xa
	.4byte	.LASF28
	.2byte	0x416
	.byte	0xa
	.4byte	.LASF29
	.2byte	0x419
	.byte	0xa
	.4byte	.LASF30
	.2byte	0x41a
	.byte	0xa
	.4byte	.LASF31
	.2byte	0x41b
	.byte	0xa
	.4byte	.LASF32
	.2byte	0x41c
	.byte	0xa
	.4byte	.LASF33
	.2byte	0x41d
	.byte	0xa
	.4byte	.LASF34
	.2byte	0x300
	.byte	0xa
	.4byte	.LASF35
	.2byte	0x302
	.byte	0xa
	.4byte	.LASF36
	.2byte	0x303
	.byte	0xa
	.4byte	.LASF37
	.2byte	0x304
	.byte	0xa
	.4byte	.LASF38
	.2byte	0x305
	.byte	0xa
	.4byte	.LASF39
	.2byte	0x306
	.byte	0xa
	.4byte	.LASF40
	.2byte	0x309
	.byte	0xa
	.4byte	.LASF41
	.2byte	0x30a
	.byte	0xa
	.4byte	.LASF42
	.2byte	0x30b
	.byte	0xa
	.4byte	.LASF43
	.2byte	0x30c
	.byte	0xa
	.4byte	.LASF44
	.2byte	0x30e
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.2byte	0x1a1
	.byte	0xe
	.4byte	0x1d0
	.byte	0x6
	.4byte	.LASF45
	.byte	0
	.byte	0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6
	.4byte	.LASF47
	.byte	0x2
	.byte	0x6
	.4byte	.LASF48
	.byte	0x3
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x5
	.byte	0x8a
	.byte	0x1
	.4byte	0x21b
	.byte	0x6
	.4byte	.LASF49
	.byte	0x9
	.byte	0x6
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.4byte	.LASF51
	.byte	0x7
	.byte	0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0x6
	.4byte	.LASF53
	.byte	0x5
	.byte	0x6
	.4byte	.LASF54
	.byte	0x4
	.byte	0x6
	.4byte	.LASF55
	.byte	0x3
	.byte	0x6
	.4byte	.LASF56
	.byte	0x2
	.byte	0x6
	.4byte	.LASF57
	.byte	0x1
	.byte	0x6
	.4byte	.LASF58
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x5
	.byte	0x96
	.byte	0x2
	.4byte	0x1d0
	.byte	0xb
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x2fb
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x261
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2fb
	.byte	0x2a
	.4byte	0x6e
	.4byte	.LLST32
	.byte	0xc
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x2fb
	.byte	0x41
	.4byte	0x6e
	.4byte	.LLST33
	.byte	0
	.byte	0xd
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x2e0
	.byte	0xc
	.4byte	0xac
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bf
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2e0
	.byte	0x2e
	.4byte	0x6e
	.4byte	.LLST29
	.byte	0xe
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x2e0
	.byte	0x45
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2e2
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST30
	.byte	0xf
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2e2
	.byte	0x1e
	.4byte	0x6e
	.4byte	.LLST31
	.byte	0
	.byte	0xb
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x2c8
	.byte	0x6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f7
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2c8
	.byte	0x27
	.4byte	0x6e
	.4byte	.LLST28
	.byte	0xe
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2c8
	.byte	0x3e
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x2b3
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x331
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2b3
	.byte	0x26
	.4byte	0x6e
	.4byte	.LLST26
	.byte	0xc
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2b3
	.byte	0x3d
	.4byte	0x6e
	.4byte	.LLST27
	.byte	0
	.byte	0xb
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x29e
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x369
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x29e
	.byte	0x20
	.4byte	0x6e
	.4byte	.LLST25
	.byte	0xe
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x29e
	.byte	0x3e
	.4byte	0x21b
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xd
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x289
	.byte	0xc
	.4byte	0xac
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a5
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x289
	.byte	0x24
	.4byte	0x6e
	.4byte	.LLST24
	.byte	0xe
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x289
	.byte	0x42
	.4byte	0x21b
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x26c
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ec
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x26c
	.byte	0x29
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x26c
	.byte	0x40
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.string	"ctl"
	.byte	0x1
	.2byte	0x26e
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST23
	.byte	0
	.byte	0xb
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x257
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x433
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x257
	.byte	0x28
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x257
	.byte	0x3f
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.string	"ctl"
	.byte	0x1
	.2byte	0x259
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST22
	.byte	0
	.byte	0xb
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x242
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x47a
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x242
	.byte	0x2e
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x242
	.byte	0x45
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.string	"ctl"
	.byte	0x1
	.2byte	0x244
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST21
	.byte	0
	.byte	0xb
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x22d
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c1
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x22d
	.byte	0x2e
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x22d
	.byte	0x45
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.string	"ctl"
	.byte	0x1
	.2byte	0x22f
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST20
	.byte	0
	.byte	0xb
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x21d
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f9
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x21d
	.byte	0x2a
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x21d
	.byte	0x41
	.4byte	0x6e
	.4byte	.LLST19
	.byte	0
	.byte	0xb
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x20d
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x531
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x20d
	.byte	0x26
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.string	"psc"
	.byte	0x1
	.2byte	0x20d
	.byte	0x3c
	.4byte	0x41
	.4byte	.LLST18
	.byte	0
	.byte	0xb
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x201
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x558
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x201
	.byte	0x27
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1f6
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x57f
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1f6
	.byte	0x26
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1eb
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a6
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1eb
	.byte	0x31
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1e0
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cd
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1e0
	.byte	0x30
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1d5
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f4
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1d5
	.byte	0x2c
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1ca
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x61b
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1ca
	.byte	0x2b
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1be
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x653
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1be
	.byte	0x27
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1be
	.byte	0x3d
	.4byte	0x6e
	.4byte	.LLST17
	.byte	0
	.byte	0xb
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1aa
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x6be
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1aa
	.byte	0x2e
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1aa
	.byte	0x45
	.4byte	0x6e
	.4byte	.LLST13
	.byte	0x11
	.string	"cph"
	.byte	0x1
	.2byte	0x1aa
	.byte	0x54
	.4byte	0x6e
	.4byte	.LLST14
	.byte	0x11
	.string	"cpl"
	.byte	0x1
	.2byte	0x1aa
	.byte	0x62
	.4byte	0x6e
	.4byte	.LLST15
	.byte	0x10
	.string	"ctl"
	.byte	0x1
	.2byte	0x1ac
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST16
	.byte	0
	.byte	0xb
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x193
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e5
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x193
	.byte	0x2f
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x188
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x70c
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x188
	.byte	0x2e
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x17d
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x733
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x17d
	.byte	0x28
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x172
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x75a
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x172
	.byte	0x27
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x167
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x781
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x167
	.byte	0x20
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x15b
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b9
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x15b
	.byte	0x37
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x15b
	.byte	0x4e
	.4byte	0x6e
	.4byte	.LLST12
	.byte	0
	.byte	0xb
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x14c
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e0
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x14c
	.byte	0x26
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x141
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x807
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x141
	.byte	0x25
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x135
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x83d
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x135
	.byte	0x2d
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x135
	.byte	0x44
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x126
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x864
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x126
	.byte	0x27
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x11b
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x88b
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x11b
	.byte	0x26
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x10f
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c3
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x10f
	.byte	0x24
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x10f
	.byte	0x3a
	.4byte	0x41
	.4byte	.LLST11
	.byte	0
	.byte	0xd
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x103
	.byte	0xa
	.4byte	0x54
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x8f0
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x103
	.byte	0x26
	.4byte	0x6e
	.4byte	.LLST10
	.byte	0
	.byte	0x12
	.4byte	.LASF108
	.byte	0x1
	.byte	0xf8
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x925
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf8
	.byte	0x23
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF109
	.byte	0x1
	.byte	0xf8
	.byte	0x3a
	.4byte	0x6e
	.4byte	.LLST9
	.byte	0
	.byte	0x12
	.4byte	.LASF110
	.byte	0x1
	.byte	0xe6
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x968
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe6
	.byte	0x24
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF111
	.byte	0x1
	.byte	0xe6
	.byte	0x3b
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"ctl"
	.byte	0x1
	.byte	0xe8
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST8
	.byte	0
	.byte	0x12
	.4byte	.LASF112
	.byte	0x1
	.byte	0xd1
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ab
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd1
	.byte	0x25
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF113
	.byte	0x1
	.byte	0xd1
	.byte	0x3c
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"ctl"
	.byte	0x1
	.byte	0xd3
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST7
	.byte	0
	.byte	0x12
	.4byte	.LASF114
	.byte	0x1
	.byte	0xc2
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x9d0
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc2
	.byte	0x1d
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x12
	.4byte	.LASF115
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x9f5
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb7
	.byte	0x1c
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x12
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa9
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xa28
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa9
	.byte	0x22
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF117
	.byte	0x1
	.byte	0xa9
	.byte	0x39
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LASF118
	.byte	0x1
	.byte	0x95
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xa5b
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x95
	.byte	0x25
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF119
	.byte	0x1
	.byte	0x95
	.byte	0x3c
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LASF120
	.byte	0x1
	.byte	0x83
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8e
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x83
	.byte	0x23
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF121
	.byte	0x1
	.byte	0x83
	.byte	0x3a
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LASF122
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xb27
	.byte	0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x55
	.byte	0x22
	.4byte	0x6e
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF123
	.byte	0x1
	.byte	0x55
	.byte	0x39
	.4byte	0x6e
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST3
	.byte	0x16
	.4byte	.LASF125
	.byte	0x1
	.byte	0x57
	.byte	0x17
	.4byte	0x6e
	.4byte	.LLST4
	.byte	0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x57
	.byte	0x22
	.4byte	0x6e
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0x57
	.byte	0x2d
	.4byte	0x6e
	.4byte	.LLST6
	.byte	0x17
	.4byte	.LVL18
	.4byte	0xc1c
	.4byte	0xb17
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x19
	.4byte	.LVL25
	.4byte	0xc1c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF128
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1c
	.byte	0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2d
	.byte	0x1c
	.4byte	0x6e
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LVL2
	.4byte	0xc29
	.4byte	0xb62
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x30e
	.byte	0
	.byte	0x1a
	.4byte	.LVL3
	.4byte	0xc36
	.4byte	0xb77
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x30e
	.byte	0
	.byte	0x17
	.4byte	.LVL5
	.4byte	0xc29
	.4byte	0xb8c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x412
	.byte	0
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0xc36
	.4byte	0xba1
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x412
	.byte	0
	.byte	0x17
	.4byte	.LVL8
	.4byte	0xc29
	.4byte	0xbb6
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x413
	.byte	0
	.byte	0x1a
	.4byte	.LVL9
	.4byte	0xc36
	.4byte	0xbcb
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x413
	.byte	0
	.byte	0x17
	.4byte	.LVL11
	.4byte	0xc29
	.4byte	0xbe0
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x414
	.byte	0
	.byte	0x1a
	.4byte	.LVL12
	.4byte	0xc36
	.4byte	0xbf5
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x414
	.byte	0
	.byte	0x17
	.4byte	.LVL14
	.4byte	0xc29
	.4byte	0xc0a
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x411
	.byte	0
	.byte	0x1b
	.4byte	.LVL15
	.4byte	0xc36
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x411
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x2cf
	.byte	0xa
	.byte	0x1c
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x27d
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x27f
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0xb4,0x42
	.byte	0x19
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST32:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE41
	.2byte	0xa
	.byte	0x31
	.byte	0x7b
	.byte	0
	.byte	0x4f
	.byte	0x1a
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LFE41
	.2byte	0xe
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x40
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL60
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL63
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x15
	.byte	0x79
	.byte	0
	.byte	0x31
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0xa
	.2byte	0xfff0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x13
	.byte	0x79
	.byte	0
	.byte	0x31
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x11
	.byte	0x79
	.byte	0
	.byte	0x31
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x725
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xc44
	.4byte	0x96
	.string	"RESET"
	.4byte	0x9c
	.string	"SET"
	.4byte	0xa2
	.string	"MAX"
	.4byte	0xc7
	.string	"RCU_USBFSRST"
	.4byte	0xce
	.string	"RCU_TIMER1RST"
	.4byte	0xd5
	.string	"RCU_TIMER2RST"
	.4byte	0xdc
	.string	"RCU_TIMER3RST"
	.4byte	0xe3
	.string	"RCU_TIMER4RST"
	.4byte	0xea
	.string	"RCU_TIMER5RST"
	.4byte	0xf1
	.string	"RCU_TIMER6RST"
	.4byte	0xf8
	.string	"RCU_WWDGTRST"
	.4byte	0xff
	.string	"RCU_SPI1RST"
	.4byte	0x106
	.string	"RCU_SPI2RST"
	.4byte	0x10d
	.string	"RCU_USART1RST"
	.4byte	0x114
	.string	"RCU_USART2RST"
	.4byte	0x11b
	.string	"RCU_UART3RST"
	.4byte	0x122
	.string	"RCU_UART4RST"
	.4byte	0x129
	.string	"RCU_I2C0RST"
	.4byte	0x130
	.string	"RCU_I2C1RST"
	.4byte	0x137
	.string	"RCU_CAN0RST"
	.4byte	0x13e
	.string	"RCU_CAN1RST"
	.4byte	0x145
	.string	"RCU_BKPIRST"
	.4byte	0x14c
	.string	"RCU_PMURST"
	.4byte	0x153
	.string	"RCU_DACRST"
	.4byte	0x15a
	.string	"RCU_AFRST"
	.4byte	0x161
	.string	"RCU_GPIOARST"
	.4byte	0x168
	.string	"RCU_GPIOBRST"
	.4byte	0x16f
	.string	"RCU_GPIOCRST"
	.4byte	0x176
	.string	"RCU_GPIODRST"
	.4byte	0x17d
	.string	"RCU_GPIOERST"
	.4byte	0x184
	.string	"RCU_ADC0RST"
	.4byte	0x18b
	.string	"RCU_ADC1RST"
	.4byte	0x192
	.string	"RCU_TIMER0RST"
	.4byte	0x199
	.string	"RCU_SPI0RST"
	.4byte	0x1a0
	.string	"RCU_USART0RST"
	.4byte	0x1b7
	.string	"CK_SYS"
	.4byte	0x1bd
	.string	"CK_AHB"
	.4byte	0x1c3
	.string	"CK_APB1"
	.4byte	0x1c9
	.string	"CK_APB2"
	.4byte	0x227
	.string	"usart_interrupt_flag_clear"
	.4byte	0x261
	.string	"usart_interrupt_flag_get"
	.4byte	0x2bf
	.string	"usart_interrupt_disable"
	.4byte	0x2f7
	.string	"usart_interrupt_enable"
	.4byte	0x331
	.string	"usart_flag_clear"
	.4byte	0x369
	.string	"usart_flag_get"
	.4byte	0x3a5
	.string	"usart_dma_transmit_config"
	.4byte	0x3ec
	.string	"usart_dma_receive_config"
	.4byte	0x433
	.string	"usart_hardware_flow_cts_config"
	.4byte	0x47a
	.string	"usart_hardware_flow_rts_config"
	.4byte	0x4c1
	.string	"usart_irda_lowpower_config"
	.4byte	0x4f9
	.string	"usart_prescaler_config"
	.4byte	0x531
	.string	"usart_irda_mode_disable"
	.4byte	0x558
	.string	"usart_irda_mode_enable"
	.4byte	0x57f
	.string	"usart_smartcard_mode_nack_disable"
	.4byte	0x5a6
	.string	"usart_smartcard_mode_nack_enable"
	.4byte	0x5cd
	.string	"usart_smartcard_mode_disable"
	.4byte	0x5f4
	.string	"usart_smartcard_mode_enable"
	.4byte	0x61b
	.string	"usart_guard_time_config"
	.4byte	0x653
	.string	"usart_synchronous_clock_config"
	.4byte	0x6be
	.string	"usart_synchronous_clock_disable"
	.4byte	0x6e5
	.string	"usart_synchronous_clock_enable"
	.4byte	0x70c
	.string	"usart_halfduplex_disable"
	.4byte	0x733
	.string	"usart_halfduplex_enable"
	.4byte	0x75a
	.string	"usart_send_break"
	.4byte	0x781
	.string	"usart_lin_break_detection_length_config"
	.4byte	0x7b9
	.string	"usart_lin_mode_disable"
	.4byte	0x7e0
	.string	"usart_lin_mode_enable"
	.4byte	0x807
	.string	"usart_mute_mode_wakeup_config"
	.4byte	0x83d
	.string	"usart_mute_mode_disable"
	.4byte	0x864
	.string	"usart_mute_mode_enable"
	.4byte	0x88b
	.string	"usart_address_config"
	.4byte	0x8c3
	.string	"usart_data_receive"
	.4byte	0x8f0
	.string	"usart_data_transmit"
	.4byte	0x925
	.string	"usart_receive_config"
	.4byte	0x968
	.string	"usart_transmit_config"
	.4byte	0x9ab
	.string	"usart_disable"
	.4byte	0x9d0
	.string	"usart_enable"
	.4byte	0x9f5
	.string	"usart_stop_bit_set"
	.4byte	0xa28
	.string	"usart_word_length_set"
	.4byte	0xa5b
	.string	"usart_parity_config"
	.4byte	0xa8e
	.string	"usart_baudrate_set"
	.4byte	0xb27
	.string	"usart_deinit"
	.4byte	0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0xed
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xc44
	.4byte	0x2c
	.string	"unsigned char"
	.4byte	0x33
	.string	"char"
	.4byte	0x25
	.string	"unsigned int"
	.4byte	0x3a
	.string	"signed char"
	.4byte	0x41
	.string	"uint8_t"
	.4byte	0x4d
	.string	"short int"
	.4byte	0x60
	.string	"short unsigned int"
	.4byte	0x54
	.string	"uint16_t"
	.4byte	0x67
	.string	"int"
	.4byte	0x6e
	.string	"uint32_t"
	.4byte	0x7a
	.string	"long long int"
	.4byte	0x81
	.string	"long long unsigned int"
	.4byte	0xac
	.string	"FlagStatus"
	.4byte	0x21b
	.string	"usart_flag_enum"
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x16c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"usart_dma_transmit_config"
.LASF104:
	.string	"usart_mute_mode_enable"
.LASF70:
	.string	"usart_interrupt_flag_get"
.LASF99:
	.string	"usart_lin_mode_disable"
.LASF81:
	.string	"usart_prescaler_config"
.LASF12:
	.string	"FlagStatus"
.LASF33:
	.string	"RCU_DACRST"
.LASF56:
	.string	"USART_FLAG_NERR"
.LASF106:
	.string	"addr"
.LASF76:
	.string	"ctsconfig"
.LASF64:
	.string	"usart_interrupt_flag_clear"
.LASF116:
	.string	"usart_stop_bit_set"
.LASF73:
	.string	"dmacmd"
.LASF130:
	.string	"rcu_periph_reset_enable"
.LASF126:
	.string	"fradiv"
.LASF84:
	.string	"usart_smartcard_mode_nack_disable"
.LASF46:
	.string	"CK_AHB"
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF100:
	.string	"usart_lin_mode_enable"
.LASF45:
	.string	"CK_SYS"
.LASF10:
	.string	"long long unsigned int"
.LASF125:
	.string	"intdiv"
.LASF120:
	.string	"usart_parity_config"
.LASF89:
	.string	"gaut"
.LASF6:
	.string	"uint16_t"
.LASF121:
	.string	"paritycfg"
.LASF96:
	.string	"usart_send_break"
.LASF66:
	.string	"interrupt"
.LASF35:
	.string	"RCU_GPIOARST"
.LASF79:
	.string	"usart_irda_lowpower_config"
.LASF28:
	.string	"RCU_I2C1RST"
.LASF67:
	.string	"usart_interrupt_enable"
.LASF19:
	.string	"RCU_TIMER6RST"
.LASF39:
	.string	"RCU_GPIOERST"
.LASF110:
	.string	"usart_receive_config"
.LASF0:
	.string	"unsigned int"
.LASF71:
	.string	"usart_flag_get"
.LASF78:
	.string	"rtsconfig"
.LASF54:
	.string	"USART_FLAG_IDLEF"
.LASF36:
	.string	"RCU_GPIOBRST"
.LASF111:
	.string	"rxconfig"
.LASF109:
	.string	"data"
.LASF27:
	.string	"RCU_I2C0RST"
.LASF32:
	.string	"RCU_PMURST"
.LASF95:
	.string	"usart_halfduplex_enable"
.LASF94:
	.string	"usart_halfduplex_disable"
.LASF18:
	.string	"RCU_TIMER5RST"
.LASF124:
	.string	"uclk"
.LASF38:
	.string	"RCU_GPIODRST"
.LASF51:
	.string	"USART_FLAG_TBE"
.LASF131:
	.string	"rcu_periph_reset_disable"
.LASF123:
	.string	"baudval"
.LASF30:
	.string	"RCU_CAN1RST"
.LASF4:
	.string	"short int"
.LASF107:
	.string	"usart_data_receive"
.LASF20:
	.string	"RCU_WWDGTRST"
.LASF63:
	.string	"flagstatus"
.LASF83:
	.string	"usart_irda_mode_enable"
.LASF62:
	.string	"intenable"
.LASF132:
	.string	"GNU C99 10.2.0 -fmessage-length=0 -std=gnu99 -march=rv32imac -fno-signed-char -gdwarf-4 -g2 -gpubnames -O2 -fomit-frame-pointer -fno-dwarf2-cfi-asm -ffunction-sections -fdata-sections -fshort-enums -fno-common"
.LASF65:
	.string	"usart_interrupt_disable"
.LASF115:
	.string	"usart_enable"
.LASF90:
	.string	"usart_synchronous_clock_config"
.LASF93:
	.string	"usart_synchronous_clock_enable"
.LASF133:
	.string	"C:\\dev\\riscv\\fun_with_rv\\8_uart_demo\\GD32VF1xx\\Device\\Source\\gd32vf103_usart.c"
.LASF98:
	.string	"lblen"
.LASF17:
	.string	"RCU_TIMER4RST"
.LASF37:
	.string	"RCU_GPIOCRST"
.LASF87:
	.string	"usart_smartcard_mode_enable"
.LASF29:
	.string	"RCU_CAN0RST"
.LASF91:
	.string	"clen"
.LASF13:
	.string	"RCU_USBFSRST"
.LASF55:
	.string	"USART_FLAG_ORERR"
.LASF77:
	.string	"usart_hardware_flow_rts_config"
.LASF88:
	.string	"usart_guard_time_config"
.LASF34:
	.string	"RCU_AFRST"
.LASF61:
	.string	"int_flag"
.LASF11:
	.string	"RESET"
.LASF117:
	.string	"stblen"
.LASF16:
	.string	"RCU_TIMER3RST"
.LASF53:
	.string	"USART_FLAG_RBNE"
.LASF1:
	.string	"unsigned char"
.LASF119:
	.string	"wlen"
.LASF22:
	.string	"RCU_SPI2RST"
.LASF128:
	.string	"usart_deinit"
.LASF103:
	.string	"usart_mute_mode_disable"
.LASF31:
	.string	"RCU_BKPIRST"
.LASF26:
	.string	"RCU_UART4RST"
.LASF69:
	.string	"flag"
.LASF108:
	.string	"usart_data_transmit"
.LASF49:
	.string	"USART_FLAG_CTSF"
.LASF92:
	.string	"usart_synchronous_clock_disable"
.LASF68:
	.string	"usart_flag_clear"
.LASF59:
	.string	"usart_flag_enum"
.LASF8:
	.string	"uint32_t"
.LASF80:
	.string	"irlp"
.LASF74:
	.string	"usart_dma_receive_config"
.LASF24:
	.string	"RCU_USART2RST"
.LASF15:
	.string	"RCU_TIMER2RST"
.LASF2:
	.string	"char"
.LASF102:
	.string	"wmethod"
.LASF52:
	.string	"USART_FLAG_TC"
.LASF113:
	.string	"txconfig"
.LASF47:
	.string	"CK_APB1"
.LASF48:
	.string	"CK_APB2"
.LASF25:
	.string	"RCU_UART3RST"
.LASF60:
	.string	"usart_periph"
.LASF112:
	.string	"usart_transmit_config"
.LASF114:
	.string	"usart_disable"
.LASF134:
	.string	"C:\\dev\\riscv\\fun_with_rv\\8_uart_demo"
.LASF101:
	.string	"usart_mute_mode_wakeup_config"
.LASF7:
	.string	"short unsigned int"
.LASF75:
	.string	"usart_hardware_flow_cts_config"
.LASF122:
	.string	"usart_baudrate_set"
.LASF82:
	.string	"usart_irda_mode_disable"
.LASF23:
	.string	"RCU_USART1RST"
.LASF14:
	.string	"RCU_TIMER1RST"
.LASF97:
	.string	"usart_lin_break_detection_length_config"
.LASF41:
	.string	"RCU_ADC1RST"
.LASF127:
	.string	"udiv"
.LASF58:
	.string	"USART_FLAG_PERR"
.LASF21:
	.string	"RCU_SPI1RST"
.LASF129:
	.string	"rcu_clock_freq_get"
.LASF86:
	.string	"usart_smartcard_mode_disable"
.LASF105:
	.string	"usart_address_config"
.LASF5:
	.string	"uint8_t"
.LASF118:
	.string	"usart_word_length_set"
.LASF85:
	.string	"usart_smartcard_mode_nack_enable"
.LASF44:
	.string	"RCU_USART0RST"
.LASF42:
	.string	"RCU_TIMER0RST"
.LASF57:
	.string	"USART_FLAG_FERR"
.LASF40:
	.string	"RCU_ADC0RST"
.LASF43:
	.string	"RCU_SPI0RST"
.LASF50:
	.string	"USART_FLAG_LBDF"
	.ident	"GCC: (based on riscv-sifive-freedom-tools-v2020.12.0 GCC) 10.2.0"
