.text
# Nome: Álvaro Lúcio Almeida Ribeiro
# Mat.: 163
# Relatório 4

# ----------------------------------- #
# Exercício 1: 

li $t0, 10
li $t1, 25
li $t2, 43
li $t3, 89

# Deslocamento à direita em 8 bits
srl $t4, $t0, 8
srl $t5, $t1, 8
srl $t6, $t2, 8
srl $t7, $t3, 8

# Deslocamento à esquerda em 4 bits
sll $t8, $t0, 4
sll $t9, $t1, 4
sll $s0, $t2, 4
sll $s1, $t3, 4

# ----------------------------------- #
# Exercício 2: 
# a) 324 and 100
li $s2, 324
li $s3, 100
and $s4, $s2, $s3

# b) 2018 and 1970
li $s5, 2018
li $s6, 1970
and $s7, $s5, $s6

# c) 33 and 66
li $t0, 33
li $t1, 66
and $t2, $t1, $t0

# ----------------------------------- #
# Exercício 3: 
# a) 324 or 100
or $t3, $s2, $s3

# b) 2018 or 1970
or $t4, $s5, $s6

# c) 33 or 66
or $t5, $t1, $t0

# ----------------------------------- #
# Exercício 4: 
# a) 324 nor 100
nor $t6, $s2, $s3

# b) 2018 nor 1970
nor $t7, $s5, $s6

# c) 66 nor 33
nor $t8, $t0, $t1
