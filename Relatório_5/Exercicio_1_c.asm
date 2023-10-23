# Nome: Álvaro Lúcio Almeida Ribeiro
# Exercício 1
# c) c[0] = b - a
.data 
c: .space 4  # 4 bytes * 1 

.text
li $t0, 10 # Assumindo b como 10
li $t1, 5  # Assumindo a como 5

la $t3, c  # Carrega o endereço base do array c

sub $t0, $t0, $t1
sw  $t0, 0($t3)  # Resultado em c[0]
