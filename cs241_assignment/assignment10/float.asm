.data
	magic32: .dword 0x5fe6eb50c7b537a9
	str1: .asciz "Please enter a floating point number: \n"
	str2: .asciz "%lf"
	strx: .asciz "You entered: %lf\n"
	str3: .asciz "The inverse square root using ARM built-in command is: %lf\n"
	str4: .asciz "The inverse square root using the Magic Constant is: %lf\n"
	
.text

.global main

main:
	stp x29, x30, [sp, #-16]!
	
	ldr x0, =str1
	bl printf

	ldr x0, =str2
	mov x1, sp
	bl scanf

	ldr d0, [sp]
	ldr x0, =strx
	bl printf

	ldr d0, [sp]
	fsqrt d1, d0
	fmov d2, #1.0
	fdiv d0, d2, d1
	ldr x0, =str3
	bl printf

	ldr d0, [sp]
	bl inv_sqrt
	ldr x0, =str4
	bl printf

	ldp x29, x30, [sp], #16
	mov w0, #0
	ret

inv_sqrt:
	stp x29, x30, [sp, #-16]!
	
	fmov d1, #1.5
	fmov d2, #0.5
	fmul d2, d2, d0
		
	fmov x1, d0
	ldr x0, =magic32
	ldr x2, [x0]
	lsr x1, x1, #1
	sub x0, x2, x1

	fmov d0, x0

	fmul d4, d2, d0
	fmul d2, d0, d4
	fsub d3, d1, d2
	fmul d0, d0, d3		

	ldp x29, x30, [sp], #16
	ret



