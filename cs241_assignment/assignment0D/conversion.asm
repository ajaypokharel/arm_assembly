.data

	str1: .asciz "Please enter a valid string: \n"
	str2: .asciz "You entered: %s\n"
	str3: .asciz "The converted number is: %li\n"
	str4: .asciz "%18[^\n]s"

.text


.global main

main:
	stp x29, x30, [sp, #-16]!
	
	add sp, sp, #-32

	ldr x0, =str1
	bl printf
	
	ldr x0, =str4
	mov x1, sp
	bl scanf

	mov x0, sp	

	bl validate

	mov x1, sp
	ldr x0, =str2
	bl printf

	mov x0, sp
	bl convert
	
	mov x1, x11
	cmp x20, #1
	b.eq make_neg
	ldr x0, =str3
	bl printf
	
final:
	add sp, sp, #32
	ldp x29, x30, [sp], #16
	mov w0, #0
	ret

make_neg:
	mov x0, #0
	sub x1, x0, x1
	ldr x0, =str3
	bl printf
	b final
	
convert:
	stp x29, x30, [sp, #-16]!
	str x0, [sp,#-16]!
	bl length
	mov x1, x0
	sub x1, x1, #1
	ldr x0, [sp], #16
	mov x3, x1
	mov x11,#0
	mov x13, #1
	mov x14, #10
	

	loop:
		cmp x1, #0
		b.lt end
		ldrb w2, [x0, x1]
		cmp w2, #0x2B
		b.eq end
		cmp w2, #0x2D
		b.eq end
		sub w2, w2, #0x30
		uxtb x2, w2
		mul x2, x2, x13
		add x11, x11, x2
		b decrement


	decrement:
		sub x1, x1, #1
		mul x13, x13, x14
		b loop

end:
	mov x0, x11
	ldp x29, x30, [sp], #16
	ret
