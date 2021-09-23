.data
	a: .word 10
	b: .word 15 
	c: .word 35
	d: .word 25
.text
	lw $s0, a
	lw $s1, b
	lw $s2, c
	lw $s3, d
	
	add $t0, $s0, $s1
	sub $t1, $s2, $s3
	sub $s0, $t0, $t1