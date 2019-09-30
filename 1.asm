# f = (a – b) + (c + d)

ADDI $s0, $zero, 5

ADDI $s1, $zero, 5

ADDI $s2, $zero, 5

ADDI $s3, $zero, 5


SUB $t0, $s0, $s1

ADD $t1, $s2, $s3

ADD $s4, $t0, $t1