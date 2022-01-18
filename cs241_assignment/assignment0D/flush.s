	.arch armv8-a
	.file	"flush.c"
	.text
	.align	2
	.global	flush
	.type	flush, %function
flush:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	nop
.L2:
	bl	getchar
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 10
	bne	.L2
	nop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	flush, .-flush
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
