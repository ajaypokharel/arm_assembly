	.arch armv8-a
	.file	"as_02.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Lower Case: %s\n"
	.text
	.align	2
	.global	lower
	.type	lower, %function
lower:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L2
.L4:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 64
	bls	.L3
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 90
	bhi	.L3
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	add	w1, w1, 32
	and	w1, w1, 255
	strb	w1, [x0]
.L3:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L4
	ldr	x1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	lower, .-lower
	.section	.rodata
	.align	3
.LC1:
	.string	"Upper Case: %s\n"
	.text
	.align	2
	.global	upper
	.type	upper, %function
upper:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	b	.L7
.L9:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 96
	bls	.L8
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 122
	bhi	.L8
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	sub	w1, w1, #32
	and	w1, w1, 255
	strb	w1, [x0]
.L8:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L7:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldr	x1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	upper, .-upper
	.section	.rodata
	.align	3
.LC3:
	.string	"the pointer to the original string: 0x%x\n"
	.align	3
.LC4:
	.string	"the modified strings are: 0x%x and 0x%x\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 56
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	mov	w0, 12
	str	w0, [sp, 76]
	add	x0, sp, 40
	ldr	w1, [sp, 76]
	bl	lower
	strb	w0, [sp, 75]
	add	x0, sp, 24
	bl	upper
	strb	w0, [sp, 74]
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x1, sp, 24
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	"Hello World!"
	.text
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
