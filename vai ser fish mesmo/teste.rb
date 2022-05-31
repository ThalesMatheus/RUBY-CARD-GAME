#def mao1()
#    $maozinha1 = $baralho.sample(3)
#    $baralho = $baralho - $maozinha1
#    p $maozinha1
#end

$naipes = ['♣️', '♥', '♠', '♦️']
$valours = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
$baralho = $valours.product($naipes)
$baralho = $baralho
$cartinhas = []
puts "deseja embaralhar quantas vezes? "
num = gets.to_i
cont = 0
$players = {
    1 => $maozinha1 = [],
    2 => $maozinha2 = []
}


while cont <= num
    $baralho.shuffle!
    cont += 1
end

def mao1()
    $maozinha1 = $baralho.sample(3)
    $baralho = $baralho - $maozinha1
    p $maozinha1
end

def mao2()
    $players[2] = $baralho.sample(3)
    $baralho = $baralho - $players[2]
    p $players[2]
end

def conv()
    $teste = $teste.chomp("\n")
end

def fish()
    for x in $players[$pp]
        i = 0;
        while i < $players[$pp].length-1 do 
            if x.index($teste)
                $maozinha1.append(x)
                $players[$pp].delete(x)
            end
            i += 1
        end
    end
end

p "Quer falar com qual jogador? "
$pp = gets.to_i



p $players[2]
mao1()
mao2()
$teste = gets.to_s
conv()
fish()
p $maozinha1
p $maozinha2


for x in $maozinha1 || $maozinha2
    if x.index("J")
        p "JOTA DE JOAO PEDRO"
    end
end

