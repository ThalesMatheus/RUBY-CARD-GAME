require "./ranks"

class Points
    
    
    
end

for card in $maozinha1
    card = $maozinha1 + $mesa
    for z in card
        if z.index("A")
            z << $cartinhas
        end
    end
    p z
    p $cartinhas
end

if cartinhas.length >= 5
    p "straight!"
else
    p "nao deu"
end
#################################
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
