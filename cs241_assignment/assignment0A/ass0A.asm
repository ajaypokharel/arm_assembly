.data

statement: .asciz "The fibbonacci Number for %i is %i\n"

.text

.global main

main:
	stp x29, x30, [sp, #-16]!
	mov x1, #12
	mov x2, #1
	mov x3, #1
	mov x4, #0
	mov x5, #1
	mov x6, #0


loop:
	cmp x2, x1
	b.ge end
	add x2, x2, x3
	mov x6, x5
	add x5, x5, x4
	mov x4, x6
	b loop
	

end:
	mov x2, x5
	ldr x0, =statement
	bl printf
	ldp x29, x30, [sp], #16
	mov w0, #0
	ret
