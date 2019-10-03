#condition de victoire win=10
#condition initial n = 0;
#monte d'une marche si le dé fait 5 ou 6; n = n+1
#descend d'une marche si le dé fait 1; n = n-1
#ne fait rien si le dé fait 2, 3 ou 4; n = n

def lancer_de_dé_user
dice = rand(1..6).to_s
print "appuie sur entrée pour relancer le dé"
blank = gets.chomp
return dice    
end

def lancer_de_dé_simulation
    dice = rand(1..6).to_s
    print "appuie sur entrée pour relancer le dé"
    end

def valeur_n
    dice=lancer_de_dé
    case dice
        when "1"
            puts "Tu as fait un 1, tu redescends -1"
            n = -1 
        when "2","3","4" 
            puts "Tu as fait un #{dice}, ça sert à rien"
            n=0
        when "5","6"
            puts "Tu as fait un #{dice}, bravo tu montes +1"
            n=1
    end
    return n
end


def jeu
    total = 0
    win = 10
    tour_number = []
    while total < win
        n = valeur_n
        total = n + total
        if total < 0
            total=0
        puts "Mais comme ya pas de sous-sol"
        end
        puts "Tu es sur la marche #{total} !"
        tour_number << "#{total}" 
    end
    puts " Bravo, tu as gagné.e.s !!!! Toutes mes félicitations !!!!"
    z = tour_number.length 
    return z
end

def average_finish_time
    results_array = []
    100.times do 
        z=jeu
        jeu
        results_array << z
    end 
    p results_array 
    somme = results_array.sum
    taille = results_array.length
puts "En moyenne, il a fallut #{somme/taille} lancés de dé !"
end

jeu


