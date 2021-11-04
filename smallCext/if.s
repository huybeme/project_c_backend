main:
	li	a,4
	li	a,#apple
	store	a,[a]
	li	a,3
	li	a,#banana
	store	a,[a]
	li	a,#apple
	load	a,[a]
	push	a
	li	a,6
	pop	d
	pop	d
	li	a,0
	skipge	d
	inc
	li	d,#?2
	skipnz	a
	jalr	d,d
	li	a,6
	li	a,#banana
	store	a,[a]
?2:
?1:
apple:	db	2
banana:	db	2

;0 error(s) in compilation
;	literal pool:0
;	global pool:70
;	Macro pool:51
	.endfunc
