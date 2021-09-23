.data
	a: .word 18
	b: .word 18
	d: .word 15
	e: .word 40
	g: .word 24
	h: .word 12
	k: .word 55
	l: .word 12
	
.text
	lw $s0, a
	lw $s1, b
	lw $s2, d
	lw $s3, e
	lw $s4, g
	lw $s5, h
	lw $s6, k
	lw $s7, l
			
	beq $s0, $s1, firstif
		sub $t1, $s4, $s5 #else
		j final
	firstif: #if
		add $t0, $s2, $s3
		j final
	final:
		mul $t2, $s6, $s7
		addi $v0, $zero, 10
		syscall