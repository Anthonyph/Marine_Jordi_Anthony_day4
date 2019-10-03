def ask_number 

        puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
        puts "choisi un nombre entre 1 et 25"
        print "> "
        number=gets.to_i
            while 25<number || number<1 do
                puts "la valeure n'est pas comprise dans l'intervalle"
                puts "try again"
                print "> "
                number=gets.to_i
            end
            return number 
end 

def ask_number2 

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    puts "choisi un nombre impair entre 1 et 25"
    print "> "
    number2=gets.to_i
        while 25<number2 || number2<1 
            puts "la valeure n'est pas comprise dans l'intervalle"
            puts "try again"
            print "> "
            number2=gets.to_i
        end
        while
            (number2 %2==0)
            puts "la valeure est paire, ce n'est pas bon"
            puts "try again"
            print "> "     
            number2=gets.to_i
        end
        while 25<number2 || number2<1 
            puts "la valeure n'est pas comprise dans l'intervalle"
            puts "try again"
            print "> "
            number2=gets.to_i
        end
        return number2
    puts "la valeur est bonne c'est parti !"
end

def half_pyramid_down
    number=ask_number
    marche="#"
    n=1
    puts "Voici la pyramide :"
     while n<number
            puts marche*n
        n=n+1
        end
end

def half_pyramid_up
    number=ask_number
    marche="#"     
    print vide*((number2)+0.5-m) 
    print marche*(m-1)
    puts marche*m   
    m=m-1
    vide = " "
    n=1
    puts "Voici la pyramide :"
     while n<number
        print vide*(number-n)    
        puts marche*n
        n=n+1
        end
end

def full_pyramid
    number=ask_number
            marche="#"
            vide = " "
            n=1
            puts "Voici la pyramide :"
                    while n < number 
                    print vide*(number-n) 
                    print marche*(n-1)
                    puts marche*n
            n=n+1
                end
end

def wtf_pyramid
            number2 = ask_number2
            marche="#"
            vide = " "
            n=1
            m=(number2/2)
            milieu=(number2/2)
    puts "Voici la pyramide :"
        while n <= (m) #partie haute de la pyramide
            print vide*(milieu-n+1) #+1 pour décaler du centre
            print marche*(n-1)
            puts marche*n
            n=n+1
        end
        #centre de la pyramide
        puts marche*number2
        while m > 0
            #partie basse de la pyramide #+1 pour décaler du centre
            print vide*(milieu-m+1) 
            print marche*(m-1)
            puts marche*m   
            m=m-1
        end

end

wtf_pyramid