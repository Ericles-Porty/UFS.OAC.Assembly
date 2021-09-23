#a = 18; b = 20;
#if ( a != b ) {
#c = 2 + b ;
#} else {
#d = 3 + a ;
#}

.data
	a: .word 18
	b: .word 20
	
.text
	lw $s0, a
	lw $s1, b 
	
	beq $s0, $s1, if1	#if $s0 == $s1 chame a f1
		addi $s2, $s1, 2
		j exit
	if1:
		addi $s3, $s0, 3
		j exit
	exit:
		li $v0, 10