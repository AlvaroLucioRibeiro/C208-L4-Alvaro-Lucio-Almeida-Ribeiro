.data
Frase1: .asciiz "Digite o valor de N: "
Saida: .asciiz "A diferenca e: "

.text
# Imprime Frase1 para o usu�rio
la $a0, Frase1
li $v0, 4
syscall

# L� o valor de N do usu�rio
li $v0, 5
syscall
move $t0, $v0    # $t0 = N

# Inicializa vari�veis
li $t1, 0 # Soma dos quadrados
li $t2, 0 # Soma para depois elevar ao quadrado
li $t3, 1 # Contador i

loop:
    # Se o contador � maior que N
    bgt $t3, $t0, exit

    # Atualiza a soma dos quadrados
    mul $t4, $t3, $t3 # t4 = t3 * t3
    add $t1, $t1, $t4 # t1 = t1 + t4

    # Atualiza a soma para depois elevar ao quadrado
    add $t2, $t2, $t3 # t2 = t2 + t3

    # Incrementa o contador
    addi $t3, $t3, 1

    # Volta para o in�cio do loop
    j loop

exit:
# Eleva a soma ao quadrado: t2 = t2 * t2
mul $t2, $t2, $t2

# Calcula a diferen�a: t2 = t2 - t1
sub $t2, $t2, $t1

# Imprime o Saida
li $v0, 4
la $a0, Saida
syscall

li $v0, 1
move $a0, $t2
syscall