.global _start

.equ eol, 6776

_start:
	
	LDR r0, =list
	
	LDR r1, [r0]
	
	LDR r3, =eol
	
	ADD r2, r2, r1


loop:

	LDR r1, [r0, #4]!
	
	CMP r3, r1
	
	BEQ exit
	
	ADD r2, r2, r1
	
	BAL loop


	
exit:


	

.data

	list:
	
		.word 1,2,3,1,6776
