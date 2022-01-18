.data

output1: .asciz "The number is %lx\n"
output2: .asciz "The negative number is %i\n"

.text

.global main

main:
	stp x29, x30, [sp, #-16]!
	movz x1, #0xBEEF
	movk x1, #0xDEAD, lsl #16
	movk x1, #0xCADE, lsl #32
	movk x1, #0xFEED, lsl #48
	ldr x0, =output1
	bl printf
	movn w1, #0x727
	ldr x0, =output2
	bl printf





	ldp x29, x30, [sp], #16
	mov w0, #0
	ret
