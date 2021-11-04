main:
	li	a,4
	li	a,#apple
	store	a,[a]
	li	a,#apple
	load	a,[a]
	push	a
	li	a,3
	add	a,b
	li	a,#apple
	store	a,[a]
?1:
	pop	d
apple:	db	2

;0 error(s) in compilation
;	literal pool:0
;	global pool:56
;	Macro pool:51
	.endfunc
