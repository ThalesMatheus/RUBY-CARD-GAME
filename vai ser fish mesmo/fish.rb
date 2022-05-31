
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
    1 => $maozinha1 = [],
    2 => $maozinha2 = [],
    3 => $maozinha3 = [],
    4 => $maozinha4 = []
}


while cont <= num
    $baralho.shuffle!
    cont += 1
end

#repetição proporcional ao ñ de players.
def mao()
    plnw = 1
    while plnw < 5 do
        $players[plnw] = $baralho.sample(3)
        $baralho = $baralho - $players[plnw]
        p $players[plnw]
        plnw += 1
    end
end
def conv()
    $teste = $teste.chomp("\n")
end


#pesca

def fish()
    for x in $players[$pp]
        i = 0;
        while i < $players[$pp].length-1 do 
            if x.index($teste)
                $players[1].append(x)
                $players[$pp].delete(x)
            end
            i += 1
        end
    end
    $players[1] = $players[1] + $baralho.sample(1)
end

p "Quer falar com qual jogador? "
$pp = gets.to_i

mao()

$teste = gets.to_s


conv()
fish()
p $players[1]
p $players[2]
p $players[3]
p $players[4]



for x in $maozinha1 || players[$pp]
    if x.index("J")
        p "JOTA DE JOAO PEDRO"
    end
end

