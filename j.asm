.data 
	a: .word 15 5 4 6 12 15 26
.text
	main:
		lw $s0, a($zero)
		li $t0, 0
		li $t2, 6
		jal minimo		
		j exit
	
	minimo:
		move $t1, $zero	
		
		for: 
				
			bge $t0, $t2, saifor
			addi $t0, $t0, 1 
			addi $t1, $t1, 4
			lw $t4, a($t1)
			bge $s0, $t4, recebe
			j for
		recebe:
			move $s0, $t4
			j  for
		
		saifor:
			move $a0, $s0 
			jr $ra
	
	exit: 
		li $v0 10
		syscall
		
		
