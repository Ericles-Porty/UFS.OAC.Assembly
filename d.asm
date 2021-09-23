.text
	move $s0, $zero
	
	 for:
	 bgt $s0, 100, saida
	 addi $a0, $s0, 4
	 addi $s0, $s0, 1
	 li $v0, 1
	 syscall
	 j for
	 saida:
	   li $v0 10
	   syscall 