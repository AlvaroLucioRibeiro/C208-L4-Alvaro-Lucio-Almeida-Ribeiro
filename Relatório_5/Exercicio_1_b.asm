# Nome: Álvaro Lúcio Almeida Ribeiro
# Exercício 1
# b) b[245] = a + c
.data 
b: .space 980  # 4 bytes * 245

.text
li $t0, 10 # Assumindo a como 10
li $t1, 5  # Assumindo c como 5

la $t3, b  # Carrega o endereço base do array b

add $t0, $t0, $t1
sw  $t0, 976($t3)  # Resultado em b[245]
