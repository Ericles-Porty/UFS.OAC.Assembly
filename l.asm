.text
	main:
		jal fibonacci		
		j exit
	
	fibonacci:	 
	
	
		
		saifib:
			jr $ra
	
	exit: 
		li $v0 10
		syscall
		
		
