#poker de cria 

$maozinha1 = []
$maozinha2 = []
$naipes = ['♣️', '♥', '♠', '♦️']
$valours = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
$baralho = $valours.product($naipes)
$baralho = $baralho
$cartinhas = []
puts "deseja embaralhar quantas vezes? "
num = gets.to_i

cont = 0

while cont <= num
    $baralho.shuffle!
    cont += 1
end

def mao1()
    $maozinha1 = $baralho.sample(3)
    $baralho = $baralho - $maozinha1
    for $a_1 in $maozinha1
    #    p $a_1
    end
end

def mao2()
    $maozinha2 = $baralho.sample(3)
    $baralho = $baralho - $maozinha2
 #   p $maozinha2
end

cartinhas = []

def dealer()
    $mesa = $baralho.sample(5)
    $baralho = $baralho - $mesa
end

def pop()
    $x = $mesa.first
    $mesa.delete_at(0)
#    print $x
end

def tonhos()
    card = $maozinha1 + $mesa
    for x in card
        p x
        if x.index(4)
            $cartinhas.append(x)
        end
    end
    p $cartinhas
end


mao1()
mao2()
dealer()
tonhos()


#puts"     ###  ###  ###
     #?#  #?#  #?#
     ###  ###  ###
     
        ###  ###
        #?#  #?#
        ###  ###"
pop()
pop()
pop()


#p maozinha2


#p maozinha1.index("♣️")



=begin




for cartinha in baralho
    if cartinha.include?("♣️") >= 5;
        p "aaa"
    end
end




=begin

for cartas in baralho
    print cartas
end

maozinha1 = baralho
    maozinha1.sort()
    maozinha1 = baralho.pop
    print maozinha1


def maozinha1(num)
    for x in range(num)
        carta_A = random.choice(baralho)
        maozinha1.append(carta_A)
        baralho.remove(carta_A)

carta 
=end
