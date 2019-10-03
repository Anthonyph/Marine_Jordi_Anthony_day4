
#condition de victoire win=10
#condition initial n = 0;
#monte d'une marche si le dé fait 5 ou 6; n = n+1
#descend d'une marche si le dé fait 1; n = n-1
#ne fait rien si le dé fait 2, 3 ou 4; n = n

def lancer_de_dé
dice = rand(1..6).to_s
puts dice 
return dice    
end

def point(dice)

    case dice
        when "1"
            #puts " tu as fait un 1"
            n = -1 
        when "2","3","4" 
            #puts " tu as fait un #{dice}"
            n=0
        when "5","6"
            #puts " tu as fait un #{dice}"
            n=1
    end
    return n
end

def jeu(n, dice)
    total = 0
    win = 10
    n
    while total < win
        total = n + total
        puts "tu as fait un #{dice} tu es sur la marche #{total}"
    end

end

def statistique

end

def perform
    dice = lancer_de_dé
    n = point(dice)

    jeu(n, dice)
end

perform


