import random
from sre_constants import REPEAT
from timeit import repeat

maozinha1 = []
maozinha2 = []
acao1 = 0
acao2 = 1
mesa = []
baralho = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
run = True
ult1 = 0
ult2 = 0

#########################################

def jogarcarta(jogador):
    escolha = int
    if jogador == 1:
        print(f'\033[1;91m{maozinha1}')
        while (escolha not in maozinha1):
            escolha = int(input("Escolha uma carta: "))
        mesa.append(escolha)
        maozinha1.remove(escolha)
        print(mesa)
    elif jogador == 2:
        print(f'\033[1;91m{maozinha2}')
        while (escolha not in maozinha2):
            escolha = int(input("Escolha uma carta: "))
        mesa.append(escolha)
        maozinha2.remove(escolha)
        print(mesa)
        
def turno1():
    global acao1, ult1
    print(f'\033[1;91m{maozinha1}')
    while acao1 != 1:
        acao1 = int(input('Digite 1 para comprar carta\ndigite 2 para passar\n'))
    if acao1 == 1 and ult1 != 1:
        jogarcarta(1)
    else: 
        acao1=0
    ult1 = acao1

def turno2():
    global acao2, ult2
    print(f'\033[0:36:40m{maozinha2}')
    while acao2 != 1 or 2:
        acao2 = int(input('Digite 1 para comprar carta\ndigite 2 para passar\n'))
    if acao2 == 1 and ult2 != 1:
        jogarcarta(2)
    else: 
        acao2=0
    ult2= acao2

def gerar_maos(num):
    for x in range(num):
        carta_A = random.choice(baralho)
        maozinha1.append(carta_A)
        baralho.remove(carta_A)
        carta_A = random.choice(baralho)
        maozinha2.append(carta_A)
        baralho.remove(carta_A)
    
while run:
    gerar_maos(5)
    while True:
        if acao1 == 0:
            turno1()
        elif acao1 == 0:
            turno2()