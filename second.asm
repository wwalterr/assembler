# f = (a + b) – (c + d - e)

ADDI $s0, $zero, 5

ADDI $s1, $zero, 5

ADDI $s2, $zero, 5

ADDI $s3, $zero, 5

ADDI $s4, $zero, 5


ADD $t0, $s0, $s1

ADD $t1, $s2, $s3

SUB $t1, $t1, $s4

SUB $s5, $t0, $t1