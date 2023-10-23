# Nome: Álvaro Lúcio Almeida Ribeiro
# Exercício 3

.data
a:  .word 4, 5

.text
# Carrega a[0] em $t0
la $t1, a
lw $t0, 0($t1)

# Carrega 5 em $t2 para a comparação
li $t2, 5

# Compara a[0] com 5
blt $t0, $t2, menor

# Else (a[0] >= 5)
la $t1, a
lw $t0, 4($t1) # Carrega a[1] em $t0
li $t3, 0 # j 
addi $t3, $t0, 10 # j = a[1] + 10
j end

menor:
# a[0] = j + 2
li $t3, 0 # j
addi $t3, $t3, 2
la $t1, a
sw $t3, 0($t1) # Armazena em a[0]

end: