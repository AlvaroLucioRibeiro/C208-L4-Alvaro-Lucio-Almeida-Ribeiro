# Nome: Álvaro Lúcio Almeida Ribeiro
# Exercício 1
# a) a[10] = b - c
.data 
a: .space 40 # 4 bytes * 10 

.text
li $t0, 10 # Assumindo b como 10
li $t1, 5 # Assumindo c como 5

la $t3, a # Carrega o endereço base do array a

sub $t0, $t0, $t1
sw  $t0, 36($t3) # Resultado em a[10]
