.data
	#enter: .asciiz   " - "
.text
	move $t0, $zero
	#la $s1, enter
	
	for: 
		bgt $t0, 100, exit #branch greater than = se for maior que
		mul $a0, $t0, 2	#
		addi $t0, $t0, 1
		li $v0, 1
		syscall
		#move $a0, $s1
		#li $v0, 4
		#syscall
		j for
	exit:
		syscall
		
