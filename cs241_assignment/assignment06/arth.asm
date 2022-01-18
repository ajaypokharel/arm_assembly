.data

arithmetic: .asciz "The sum of %i, %i, and %i is %i\n"

.text

.global main

main:
	stp x29, x30, [sp, #-16]!

	mov w1, 10
	mov w2, 11
	mov w3, 12
	add w5, w1, w2
	add w4, w3, w5
	ldr x0, =arithmetic
	bl printf

	mov w0, 0
	ldp x29, x30, [sp], 16
	ret
