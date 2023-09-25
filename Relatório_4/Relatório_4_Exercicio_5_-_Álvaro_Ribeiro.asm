.text

# ----------------------------------- #
# Exercício 5, a): 
li $t0, 10 # a
li $t1, 10 # b
li $t2, 5  # c

beq $t0, $t1, Igual  # If Se a == b, pula para Igual

# Else
add $t1, $t0, $t2  # b = a + c
sub $t2, $t1, $t2  # c = b - c
j fimA  # Pula para fim

Igual: # (if)
add $t2, $t0, $t1  # c = a + b
sub $t0, $t1, $t2  # a = b - c

fimA:

# ----------------------------------- #
# b): 
li $t0, 10 # a
li $t1, 10 # b
li $t2, 5  # c

bne $t0, $t1, Diferente  # If Se a != b, pula para Diferente

# Else
add $t1, $t0, $t2  # b = a + c
sub $t2, $t1, $t2  # c = b - c
j fimB  # Pula para fim

Diferente: # (if)
add $t2, $t0, $t1  # c = a + b
sub $t0, $t1, $t2  # a = b - c

fimB:

# ----------------------------------- #
# c): 
li $t0, 10 # a
li $t1, 10 # b
li $t2, 5  # c

slt $t3, $t1, $t0  # Se $t1 < $t0, então $t3 = 1
bnez $t3, Maior   # Se $t3 != 0, pula para Maior

# Else
sub $t1, $t0, $t2  # b = a - c
add $t2, $t0, $t2  # c = b + c
j fimC  # Pula para fim

Maior: # (if)
sub $t2, $t0, $t1  # c = a - b
add $t0, $t1, $t2  # a = b + c

fimC:

# ----------------------------------- #
# d): 
li $t0, 10 # a
li $t1, 10 # b
li $t2, 5  # c

slt $t3, $t0, $t1 # Se a < b, então $t3 = 1
bnez $t3, Menor  # Se $t3 != 0, pula para Menor

# Else
add $t1, $t0, $t2  # b = a + c
sub $t2, $t0, $t2  # c = b - c
j fimD  # Pula para fim

Menor: # (if)
add $t2, $t0, $t1  # c = a + b
sub $t0, $t1, $t2  # a = b - c

fimD:

# ----------------------------------- #
# e): 
li $t0, 10 # i
li $t1, 0 # cont

retorna:
    blez $t0, fim      # Se i <= 0, saia do loop
    addi $t1, $t1, 5   # cont += 5
    addi $t0, $t0, -2  # i -= 2
    j retorna          # Volta para o início do loop
fim: