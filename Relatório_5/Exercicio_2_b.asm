# Nome: �lvaro L�cio Almeida Ribeiro
# Exerc�cio 2
# b) b = a[5] + c[3]
.data 
a: .space 20  # 4 bytes * 5
c: .space 12  # 4 bytes * 3
b: .space 4 # 4 bytes * 1

.text
la $t1, a # Carrega o endere�o base do array a
lw $t0, 16($t1) # Carrega a[5] para $t0

la $t1, c # Carrega o endere�o base do array c
lw $t2, 8($t1) # Carrega c[3] para $t2

add $t0, $t0, $t2

la $t1, b # Carrega para b
sw $t0, 0($t1)  # Armazena o resultado em b