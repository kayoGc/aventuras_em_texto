require_relative "objetos/personagens/personagem"
require_relative "objetos/personagens/protagonista"
require_relative "objetos/personagens/inimigo"
require_relative "objetos/sistema/leitor"

leitor = Leitor.new

config_nivel = leitor.montar_config_nivel

principal = Protagonista.new(config_nivel, nome: "Mario", nivel: 5)

0.upto(3) {principal.subir_nivel}