.data 
	a: .word 15 5 4 6 12 15 26
.text
	main:
		lw $s0, a($zero)		
		li $t2, 6 #tamanho da lista
		li $t3, 5 #numero a ser procurado
		jal pertence		
		j exit
	
	pertence:
		li $t1, 0# posicao do vetor 4 em 4	
		
		for: 
			li $t0, 0 #indice da repeticao	
			bge $t0, $t2, saifor
			addi $t0, $t0, 1 
			addi $t1, $t1, 4
			lw $t4, a($t1)
			beq  $t3, $t4, indice
			j for
		indice:
			move $a0, $t0
			jr $ra
		
		saifor:
			li $a0, 0
			jr $ra
	
	exit: 
		li $v0 10
		syscall
		
		
