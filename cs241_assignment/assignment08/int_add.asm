.data

str1: .asciz "The sum of %lx%lx and %lx%lx is %016lx%lx\n"

.text

.global main

main:
	stp x29, x30, [sp, #-16]!
	movz x1, #0x00000000
	movk x1, #0x00000000, lsl #32
	movz x2, #0x00000000
	movk x2, #0x00000001, lsl #32
	movz x3, #0x00000000
	movk x3, #0x00000000, lsl #32
	movz x4, #0x00001A2B
	movk x4, #0x0000102F, lsl #32

	adds x6, x2, x4
	adcs x5, x1, x3

	ldr x0, =str1
	bl printf
	ldp x29, x30, [sp], #16
	mov w0, #0
	ret
