require_relative "objetos/personagem"

principal = Personagem.new
goblin = Personagem.new(vida_maxima: 3)

puts "Achou goblin!"

while goblin.ta_vivo? && principal.ta_vivo?
    puts "Você: #{principal.vida}, Goblin: #{goblin.vida}"
    
    puts "O que vai fazer? (digite)"
    puts "1 para atacar"
    
    if gets.chomp == "1"
        goblin.receber_dano(principal.atacar)
    end

    principal.receber_dano(goblin.atacar)
end

if principal.ta_vivo?
    puts "você derrotou o goblin!"
else
    puts "O goblin foi forte de mais :("
end