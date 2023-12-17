require_relative 'nivel'

class Leitor
  attr_accessor :caminho_nivel

  def initialize
    @caminho_nivel = "./arquivos_aventura/configuracao/nivel.md"
  end

  def chaves_hash_nivel(opcao)
    case opcao
    when "nivel máximo"
      "nivel_maximo"
    when "aumento de ataque por nivel"
      "qtd_sobe_ataque"
    when "aumento de vida por nivel"
      "qtd_sobe_vida"
    end
  end

  # lê arquivo nivel.md e coloca suas configurações em um Hash
  def ler_config_nivel
    configs = Hash.new
    
    File.foreach(self.caminho_nivel) do |linha|
      array_linha = linha.chomp.split(":")
      configs[chaves_hash_nivel(array_linha[0])] = array_linha[1].to_i
    end
    
    configs
  end

  # lê o hash de nivel e monta o objeto de configuração de nivel
  def montar_config_nivel
    con_nv = ler_config_nivel
    Nivel.new(con_nv["qtd_sobe_ataque"], con_nv["qtd_sobe_vida"], con_nv["nivel_maximo"])
  end


end
