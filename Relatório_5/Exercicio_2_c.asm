# Nome: �lvaro L�cio Almeida Ribeiro
# Exerc�cio 2
# c) c = b - a[21]
.data 
a: .space 84  # 4 bytes * 21
c: .space 4   # 4 bytes * 1 

.text
li $t2, 10 # Assumindo b como 10

la $t1, a  # Carrega o endere�o base do array a
lw $t0, 80($t1)  # Carrega a[21] para $t0

# Calcula b - a[21]
sub $t2, $t2, $t0

# Armazena o resultado em c
la $t1, c  # Carrega o endere�o base para a vari�vel c
sw $t2, 0($t1)  # Armazena o resultado em c