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
return dice    
end

def valeur_n_user
    dice=lancer_de_dé_user
    case dice
        when "1"
            puts "Tu as fait un 1, tu redescends -1"
            n_user = -1 
        when "2","3","4" 
            puts "Tu as fait un #{dice}, ça sert à rien"
            n_user =0
        when "5","6"
            puts "Tu as fait un #{dice}, bravo tu montes +1"
            n_user =1
    end
    return n
end

def valeur_n_simulation
    dice=lancer_de_dé_simulation
    case dice
        when "1"
            puts "Tu as fait un 1, tu redescends -1"
            n_simulation = -1 
        when "2","3","4" 
            puts "Tu as fait un #{dice}, ça sert à rien"
            n_simulation = 0
        when "5","6"
            puts "Tu as fait un #{dice}, bravo tu montes +1"
            n_simulation = 1
    end
    return n_simulation
end

def valeur_n_user
    dice=lancer_de_dé_user
    case dice
        when "1"
            puts "Tu as fait un 1, tu redescends -1"
            n_user = -1 
        when "2","3","4" 
            puts "Tu as fait un #{dice}, ça sert à rien"
            n_user=0
        when "5","6"
            puts "Tu as fait un #{dice}, bravo tu montes +1"
            n_user=1
    end
    return n_user
end

def jeu_user
    total = 0
    win = 10
    tour_number = []
    while total < win
        n_user = valeur_n_user
        total = n_user + total
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

def jeu_simulation
    total = 0
    win = 10
    tour_number = []
    while total < win
        n_simulation = valeur_n_simulation
        total = n_simulation + total
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
    puts "Combien de fois veux tu simuler le jeu ?"
    print "> "
    x = gets.to_i
    results_array = []
    x.times do 
        z=jeu_simulation
        jeu_simulation
        results_array << z
    end 
    p results_array 
    somme = results_array.sum
    taille = results_array.length
puts "En moyenne, il a fallut #{somme/taille} lancés de dé !"
end

def choix
    puts "Choisi si tu veux jouer ou simuler le jeu"
    puts "pour jouer écrit : jeu"
    puts "pour simuler écrit : simuler"
    choix_du_jeu = gets.chomp
    case choix_du_jeu
        when "jeu"
            jeu_user
        when "simuler"
            average_finish_time
    end

end

choix
