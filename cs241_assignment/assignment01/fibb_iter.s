	.arch armv8-a
	.file	"fibb_iter.c"
	.text
	.align	2
	.global	fibb
	.type	fibb, %function
fibb:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	.cfi_def_cfa_register 29
	str	w0, [x29, 28]
	mov	x0, sp
	mov	x10, x0
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	sxtw	x9, w0
	sub	x9, x9, #1
	str	x9, [x29, 48]
	sxtw	x9, w0
	mov	x7, x9
	mov	x8, 0
	lsr	x9, x7, 59
	lsl	x4, x8, 5
	orr	x4, x9, x4
	lsl	x3, x7, 5
	sxtw	x3, w0
	mov	x5, x3
	mov	x6, 0
	lsr	x3, x5, 59
	lsl	x2, x6, 5
	orr	x2, x3, x2
	lsl	x1, x5, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	wzr, [x0]
	ldr	x0, [x29, 40]
	mov	w1, 1
	str	w1, [x0, 4]
	mov	w0, 2
	str	w0, [x29, 60]
	b	.L2
.L3:
	ldr	w0, [x29, 60]
	sub	w1, w0, #1
	ldr	x0, [x29, 40]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	sub	w2, w0, #2
	ldr	x0, [x29, 40]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 60]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w0, w0, 1
	str	w0, [x29, 60]
.L2:
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 28]
	cmp	w1, w0
	ble	.L3
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 28]
	ldr	w0, [x0, x1, lsl 2]
	mov	sp, x10
	mov	sp, x29
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	fibb, .-fibb
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 12
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	bl	fibb
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
