.data
	myArray: .space 40
	prompt1: .asciiz "Input the ISBN (Press ENTER after each #): \n"
	prompt2: .asciiz "You Entered: "
	valid: .asciiz "You entered a valid ISBN"
	inValid: .asciiz "You entered an inValid ISBN"
	newLine: .asciiz "\n"
	
.text

main:
	li $s6, 11

	addi,$s1, $zero, 0 # $s1 = ISBN * Index(s)...
	
	li $v0, 4
	la $a0, prompt1
	syscall

	# [  Input: Numbers --> array ]
	li $v0, 5 #Index [ 1 ]
	syscall
	move $t0, $v0
	
	li $v0, 5 #Index [ 2 ]
	syscall
	move $t1, $v0
	
	li $v0, 5 #Index [ 3 ]
	syscall
	move $t2, $v0
	
	li $v0, 5 #Index [ 4 ]
	syscall
	move $t3, $v0
	
	li $v0, 5 #Index [ 5 ]
	syscall
	move $t4, $v0
	
	li $v0, 5 #Index [ 6 ]
	syscall
	move $t5, $v0
	
	li $v0, 5 #Index [ 7 ]
	syscall
	move $t6, $v0
	
	li $v0, 5 #Index [ 8 ]
	syscall
	move $t7, $v0
	
	li $v0, 5 #Index [ 9 ]
	syscall
	move $t8, $v0
	
	li $v0, 5 #Index [ 10 ]
	syscall
	move $t9, $v0
	
	# [ cout << "You Entered: " ]
	li $v0, 4
	la $a0, prompt2
	syscall
	
	# [ Storing the numbers in the array ]
	sw $t0, myArray($s0) #Index [ 1 ]  | Storing $t0 into myArray @ position $s0
		
		# [ Adds Index(s) ]
		mul $s2, $t0, 1
		add $s5, $s2, $zero
	
		# [ Outputs # ]
		move $a0, $t0
		li $v0, 1
		syscall
		
		# [ array# * array[index] --> $s4 ]  
		mul $s3, $t0, 1 # mul $s3, #, index
		add $s4, $zero, $s3
		
		addi $s0, $s0, 4 #Adding extra space in the array for the next number*
	sw $t1, myArray($s0) #Index [ 2 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t1, 2
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t1
		li $v0, 1
		syscall
		
		mul $s3, $t0, 1 # mul $s3, #, index
		add $s4, $zero, $s3
	
		addi $s0, $s0, 4
	sw $t2, myArray($s0) #Index [ 3 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t2, 3
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t2
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t3, myArray($s0) #Index [ 4 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t3, 4
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t3
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t4, myArray($s0) #Index [ 5 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t4, 5
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t4
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t5, myArray($s0) #Index [ 6 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t5, 6
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t5
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t6, myArray($s0) #Index [ 7 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t6, 7
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t6
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t7, myArray($s0) #Index [ 8 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t7, 8
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t7
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t8, myArray($s0) #Index [ 9 ]
	
		# [ Adds Index(s) ]
		mul $s2, $t8, 9
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t8
		li $v0, 1
		syscall
	
		addi $s0, $s0, 4
	sw $t9, myArray($s0) #Index [ 10 ]
	
	# [ Adds Index(s) ]
		mul $s2, $t9, 10
		add $s5, $s5, $s2
	
	# [ Outputs # ]
		move $a0, $t9
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		div $s5, $s6
		
		mfhi $s6
		
		bgt $s6,0,  falseBlock 
			li $v0, 4
			la $a0, valid
			syscall
			j pass
falseBlock:
			li $v0, 4
			la $a0, inValid
			syscall
pass:	
		
	# [ END ]
	li $v0, 10
	syscall
	
	
	
	
	
	