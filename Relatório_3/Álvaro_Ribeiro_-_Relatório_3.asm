.text
# Nome: Álvaro Lúcio Almeida Ribeiro
# Mat.: 163

# ------------------------------------------------------ #
# Exercício 1:
# a) 2 + 5
li $t0, 2
addi $t1, $t0, 5

# b) 89 + 20
li $t2, 89
addi $t3, $t2, 20

# c) -80 + 1234
li $t4, -80
addi $t5, $t4, 1234

# d) 70 - 24
li $t6, 70
sub $t7, $t6, 24

# e) 20 - 150
li $s0, 20
sub $s1, $s0, 150

# ------------------------------------------------------ #
# Exercício 2:
li $s2, 30 # Valor fixo de 30 anos
li $v0, 5 # Lendo um INT
syscall 

move $s3, $v0 # Salvando a idade no $s3
add $s4, $s3, $s2

li $v0, 1 # Imprimindo um INT
move $a0, $s4 # Será mostrado
syscall 

# ------------------------------------------------------ #
# Exercício 3:
li $s5, 54
li $s6, 45
add $s7, $s5, $s6

li $v0, 1 # Imprimindo um INT
move $a0, $s7 # Será mostrado
syscall 