def signup
    require 'io/console'
    puts "Bonjour, entre un mot de passe alpha numérique et retiens le stp!"
    puts "c'est normal si tu ne vois rien, le mot de passe est caché"
    print "> "
    password=STDIN.noecho(&:gets).chomp #hide password
    return password
end

def login
password = signup
puts "s'il te plaît rentre ton mot de passe"
print "> "
password2=STDIN.noecho(&:gets).chomp #hide password
    while (password2 != password)
        puts "ce n'est pas le bon mot de passe, "
        print "> "    
    password2=STDIN.noecho(&:gets).chomp #hide password
    end
end

def welcome_screen

end

def perform
login
end
perform