.data

.text

.global validate

validate:
	stp x29, x30, [sp, #-16]!
	//mov x1, #0
	str x0, [sp, #-16]!
	bl length
	mov x1, x0
	sub x1, x1, #1
	ldr x0, [sp], #16

	loopx:
		cmp x1, #0
		b.lt end2
		ldrb w2, [x0, x1]
		cmp x1, #0
		b.eq first
		cmp w2, #0x30
		b.lt invalid
		cmp w2, #0x39
		b.gt invalid
		b decrement1

	first:
		cmp w2, #0x2D
		b.eq is_neg
		cmp w2, #0x2B
		b.eq end2
		b decrement1

	invalid:
		bl flush
		b main

	is_neg:
		mov x20, #1
		b end2

	decrement1:
		sub x1, x1, #1
		b loopx

end2:
	ldp x29, x30, [sp], #16	
	ret		
