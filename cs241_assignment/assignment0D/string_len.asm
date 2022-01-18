.data

.text

.global length


length:
	stp x29, x30, [sp, #-16]!
	mov x1, #0
	loop1:
		ldrb w2, [x0, x1]
		cbz w2, end1
		add x1, x1, #1
		b loop1

	end1:
		mov x0, x1
		ldp x29, x30, [sp], #16
		ret
