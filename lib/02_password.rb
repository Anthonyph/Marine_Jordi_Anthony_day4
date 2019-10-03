def signup
    require 'io/console'
    puts" "
    puts "Bonjour, entre un mot de passe alpha numérique et retiens le stp!"
    puts "c'est normal si tu ne vois rien, le mot de passe est caché"
    print "> "
    password=STDIN.noecho(&:gets).chomp #hide password
    return password
end

def login
    password = signup
    puts " "
    puts "s'il te plaît rentre ton mot de passe pour te logguer"
    print "> "
    password2=STDIN.noecho(&:gets).chomp #hide password
    until (password2 == password)
        puts " "
        puts "ce n'est pas le bon mot de passe, essaie encore ! "
        print "> "    
        password2=STDIN.noecho(&:gets).chomp #hide password
    end
end

def welcome_screen
    #require 'io/console'
    system "clear"
    puts "_______________________________________________________________________  "
    puts " " 
    puts "He He He, c'est Ed SNOWDEN qui a coder ce programme, il permet de lire"
    puts "directement les SMS de tous les opposants de MACRON muhahahaha"
    puts "  "
    puts "_______________________________________________________________________"
end

def perform
    login
    welcome_screen
end
    perform