require_relative "objetos/personagens/personagem"
require_relative "objetos/personagens/protagonista"
require_relative "objetos/personagens/inimigo"
require_relative "objetos/sistema/nivel"

config_nivel = Nivel.new(2, 5, 5)

principal = Protagonista.new(config_nivel, nome: "Mario", nivel: 2)

0.upto(3) {principal.subir_nivel}

# goblin = Inimigo.new(vida_maxima: 3, nome: "Goblin")

# possivel sistema de batalha
# while goblin.ta_vivo? && principal.ta_vivo?
#     puts "Você: #{principal.vida}, Goblin: #{goblin.vida}"
    
#     puts "O que vai fazer? (digite)"
#     puts "1 para atacar"
    
#     if gets.chomp == "1"
#         goblin.receber_dano(principal.atacar)
#     end

#     break unless goblin.ta_vivo?
#     principal.receber_dano(goblin.atacar)
# end

# # mensagem vitoria / derrota
# if principal.ta_vivo?
#     puts "você derrotou o goblin!"
# else
#     puts "O goblin foi forte de mais :("
# end