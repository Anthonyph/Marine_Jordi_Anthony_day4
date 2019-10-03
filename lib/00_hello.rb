def ask_firstname
    puts "Salut quelle est ton prénom"
    print "> "
    first_name=gets.chomp
    return first_name
end

def say_hello()
    first_name=ask_firstname
    puts "bonjour #{first_name}"
end 

say_hello()