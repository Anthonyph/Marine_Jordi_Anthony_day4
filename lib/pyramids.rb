puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "choisi un nombre entre 1 et 25 ! "
print ">"
number=gets.to_i
    while 25<number || number<1 do
        print " le nombre n'est pas compris entre l'intervalle ... try again ! >"
        number=gets.to_i
    end
marche="#"
vide=" "
n=1
puts "Voici la pyramide :"
    number.times do
        print vide*(number-n)
        puts marche*n
    n=n+1
    end