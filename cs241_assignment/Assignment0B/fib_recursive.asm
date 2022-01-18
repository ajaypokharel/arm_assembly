.data

str: .asciz "The value of Fibonacci number %i is %i\n"

.text

.global main

main:
	stp x29, x30, [sp, #-16]!
	mov x0, #8
	mov x6, #8
	bl fib
	
	mov x2, x0
	mov x1, x6
	ldr x0, =str
	bl printf	

	ldp x29, x30, [sp], #16
	mov w0, #0
	ret

fib:
	stp x29, x30, [sp, #-16]!
	mov x1, #2
	cmp x0, x1
	b.gt recursive_case
	mov x0, #1
	b end

	recursive_case:
		str x0, [sp, #-16]!
		sub x0, x0, #1
		bl fib
		str x0, [sp, #-16]!

		ldr x0, [sp, #16]
		sub x0, x0, #2
		bl fib
		
		ldr x1, [sp], #16
		add sp, sp, #16
		add x0, x0, x1
		b end

	end:
		ldp x29, x30, [sp], #16
		ret
		 
