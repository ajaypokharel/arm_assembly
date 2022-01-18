	.arch armv8-a
	.file	"as_02.c"
	.text
	.align	2
	.global	built_in
	.type	built_in, %function
built_in:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	b	.L2
.L3:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 43]
	ldrb	w0, [sp, 43]
	bl	toupper
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	built_in, .-built_in
	.section	.rodata
	.align	3
.LC0:
	.string	"Upper Case: %s\n"
	.text
	.align	2
	.global	upper
	.type	upper, %function
upper:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	b	.L5
.L7:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 96
	bls	.L6
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 122
	bhi	.L6
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
.L6:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L7
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
.LFE7:
	.size	upper, .-upper
	.section	.rodata
	.align	3
.LC1:
	.string	"Enter the string to be converted: "
	.align	3
.LC2:
	.string	"%31s"
	.align	3
.LC3:
	.string	"Enter 1 to convert to use the built-in function and 2 to use the hard-coded function"
	.align	3
.LC4:
	.string	" %c"
	.align	3
.LC5:
	.string	"Invalid Input. Please start again"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	wzr, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	b	.L10
.L13:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L10
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	add	x0, sp, 23
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	ldrb	w0, [sp, 23]
	cmp	w0, 49
	bne	.L11
	add	x0, sp, 24
	bl	built_in
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L10
.L11:
	ldrb	w0, [sp, 23]
	cmp	w0, 50
	bne	.L12
	add	x0, sp, 24
	bl	upper
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L10
.L12:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
.L10:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
