# Nome: Álvaro Lúcio Almeida Ribeiro
# Exercício 2
# c) c = b - a[21]
.data 
a: .space 84  # 4 bytes * 21
c: .space 4   # 4 bytes * 1 

.text
li $t2, 10 # Assumindo b como 10

la $t1, a  # Carrega o endereço base do array a
lw $t0, 80($t1)  # Carrega a[21] para $t0

# Calcula b - a[21]
sub $t2, $t2, $t0

# Armazena o resultado em c
la $t1, c  # Carrega o endereço base para a variável c
sw $t2, 0($t1)  # Armazena o resultado em c