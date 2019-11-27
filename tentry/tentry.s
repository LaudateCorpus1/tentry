	.file	"tentry.c"
#NO_APP
	.text
tigcc_compiled.:
#APP
	.xdef _ti89
	.xdef _ti89ti
	.xdef _ti92plus
	.xdef _v200
	.xdef __ref_all___startup_code
	.xdef __ref_all___MIN_AMS_required
	.xdef __ref_all___MIN_AMS_1_01
	.set _A_LINE,0xA000
	.xdef __ref_all___kernel_format_data_var
	.xdef _tigcc_native
	.xdef __ref_all___nostub
	.xdef __ref_all___save_screen
	.xdef __ref_all___kernel_format_bss
	.xdef __ref_all___kernel_format_rom_calls
	.xdef __ref_all___nostub_retval
#NO_APP
	.section	.text.__main,"x"
	.even
	.globl	__main
__main:
	link.w %a6,#0
	movm.l #0x1030,-(%sp)
	move.l 200.w,%a0
	move.l 1060(%a0),%a0
	move.l (%a0),%a0
	clr.w %d0
	move.b -(%a0),%d0
	moveq.l #0,%d1
	jbra .L2
	.even
.L5:
	lsl.l #8,%d1
	or.b (%a0),%d1
.L2:
	subq.l #1,%a0
	dbra %d0,.L5
	move.w %d1,%d3
	jbra .L6
	.even
.L9:
	move.l %d0,-(%sp)
	move.l 1064(%a3),%a0
	jbsr (%a0)
	move.l 200.w,%a1
	move.l 1060(%a1),%a1
	move.l %a0,(%a1)
	addq.l #4,%sp
.L6:
	move.l 200.w,%a3
	move.l 1060(%a3),%a0
	move.l (%a0),%d0
	move.l %d0,%a1
	cmp.b #-27,(%a1)
	jbne .L9
	subq.l #1,%d0
	move.l %d0,(%a0)
	subq.l #2,%sp
	move.b #46,1(%sp)
	move.l 200.w,%a2
	move.l 2292(%a2),%a0
	jbsr (%a0)
	sub.w %d3,%d0
	addq.w #1,%d0
	move.w %d0,-(%sp)
	move.l 2312(%a2),%a0
	jbsr (%a0)
	move.w %d0,(%sp)
	move.l 2332(%a2),%a0
	jbsr (%a0)
	addq.l #2,%sp
	move.l %a0,-(%sp)
	move.l 2980(%a3),%a0
	jbsr (%a0)
	addq.l #6,%sp
	move.l 200.w,%a0
	move.l 1060(%a0),%a0
	subq.l #1,(%a0)
	movm.l -12(%a6),#0xc08
	unlk %a6
	rts
