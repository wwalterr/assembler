.data
	# List stored in memory
	list: .space 16

.text
	ADDI $s0, $zero, 5
	
	ADDI $s1, $zero, 5
	
	ADDI $s2, $zero, 5
	
	ADDI $s3, $zero, 5
	
	ADDI $s4, $zero, 5
	
	# Create index (offset)
	ADDI $t0, $zero, 0
	
	SW $s0, list($t0)
		ADDI $t0, $t0, 4
	
	SW $s1, list($t0)
		ADDI $t0, $t0, 4
	
	SW $s2, list($t0)
		ADDI $t0, $t0, 4
	
	SW $s3, list($t0)
		ADDI $t0, $t0, 4
	
	SW $s4, list($t0)
	
	# Retrieve values and do f = (a – b) + (c + d)
	ADDI $t0, $zero, 0
	
	LW $s0, list($t0)
		ADDI $t0, $t0, 4
	
	LW $s1, list($t0)
		ADDI $t0, $t0, 4
		
	LW $s2, list($t0)
		ADDI $t0, $t0, 4
		
	LW $s3, list($t0)
		ADDI $t0, $t0, 4
		
	LW $s4, list($t0)
		ADDI $t0, $t0, 4
		
	# Show the value retrieved from memory
	# LI $v0, 1
	
	# ADDI $a0, $s1, 0
	
	# syscall
	
	ADD $t1, $s0, $s1
	
	ADD $t2, $s3, $s4
	
	ADD $s5, $t1, $t2
	
	# Show the final result
	LI $v1, 1
	
	ADDI $a0, $s5, 0
	
	syscall