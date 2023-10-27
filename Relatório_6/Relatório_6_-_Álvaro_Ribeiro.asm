.data
Frase1: .asciiz "Digite o valor de N: "
Saida: .asciiz "A diferenca e: "

.text
# Imprime Frase1 para o usuário
la $a0, Frase1
li $v0, 4
syscall

# Lê o valor de N do usuário
li $v0, 5
syscall
move $t0, $v0    # $t0 = N

# Inicializa variáveis
li $t1, 0 # Soma dos quadrados
li $t2, 0 # Soma para depois elevar ao quadrado
li $t3, 1 # Contador i

loop:
    # Se o contador é maior que N
    bgt $t3, $t0, exit

    # Atualiza a soma dos quadrados
    mul $t4, $t3, $t3 # t4 = t3 * t3
    add $t1, $t1, $t4 # t1 = t1 + t4

    # Atualiza a soma para depois elevar ao quadrado
    add $t2, $t2, $t3 # t2 = t2 + t3

    # Incrementa o contador
    addi $t3, $t3, 1

    # Volta para o início do loop
    j loop

exit:
# Eleva a soma ao quadrado: t2 = t2 * t2
mul $t2, $t2, $t2

# Calcula a diferença: t2 = t2 - t1
sub $t2, $t2, $t1

# Imprime o Saida
li $v0, 4
la $a0, Saida
syscall

li $v0, 1
move $a0, $t2
syscall