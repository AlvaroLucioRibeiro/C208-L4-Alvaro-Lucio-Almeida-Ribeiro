# Nome: Álvaro Lúcio Almeida Ribeiro
# Exercício 2
# a) a = b[15] - c
.data 
a: .space 4  # 4 bytes * 1 
b: .space 60  # 4 bytes * 15

.text
li $t0, -10 # Assumindo c como -10

la $t1, b # Carrega o endereço base do array b
lw $t2, 56($t1) # Carrega b[15] para $t2

sub $t0, $t2, $t0 # Calcula b[15] - c

la $t1, a  # Carrega o endereço base para a variável a
sw $t0, 0($t1)  # Armazena o resultado em a