.data

str1: .asciz "The sum of %lx%lx and %lx%lx is %016lx\n"
str2: .asciz "Yes there is a carry.\n"
str3: .asciz "No, there is no carry.\n"

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

	add x5, x1, x3
	adds x6, x2, x4
	adds x5, x6, x5
	
	mrs x7, NZCV
	str x7, [sp, #-16]
	
	ldr x0, =str1
	bl printf

	msr NZCV, x7
	bcs yes_carry
	b no_carry

yes_carry:
	ldr x0, =str2
	bl printf
	b end

no_carry:
	ldr x0, =str3
	bl printf
	b end

end:
	ldp x29, x30, [sp], #16
	mov w0, #0
	ret
