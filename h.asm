.text
	addi $a0, $zero, 23
	addi $a1, $zero, 12
	jal maior #leva o a0 e a1 pra funcao maior
	li $v0, 10
	syscall

maior:
	bge $a0, $a1, else
		move $v0, $a0
		j exit
	else:
		move $v0, $a1
		j exit
	exit: 
		jr $ra #guarda o endereço no registrador ra o que estiver em v0 ou v1 e retorna a função
