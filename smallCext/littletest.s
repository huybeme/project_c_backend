main:
	li	a,3
	li	a,#a
	store	a,[a]
	li	a,4
	li	a,#b
	store	a,[a]
	li	a,0
	li	a,#s
	store	a,[a]
	li	a,0
	li	a,#i
	store	a,[a]
?2:
	li	a,#i
	load	a,[a]
	push	a
	li	a,#b
	load	a,[a]
	pop	d
	pop	d
	li	a,0
	skipge	d
	inc
	li	d,#?4
	skipnz	a
	jalr	d,d
	li	c,#?5	jalr	c,[c]
?3:
	li	a,#i
	load	a,[a]
	inc	a
	li	a,#i
	store	a,[a]
	dec	a
	li	c,#?2	jalr	c,[c]
?4:
	li	a,#s
	load	a,[a]
	push	a
	li	a,#a
	load	a,[a]
	add	a,b
	li	a,#s
	store	a,[a]
	li	c,#?3	jalr	c,[c]
?5:
	pop	d
?1:
a:	db	2
b:	db	2
s:	db	2
i:	db	2

;0 error(s) in compilation
;	literal pool:0
;	global pool:98
;	Macro pool:51
	.endfunc
