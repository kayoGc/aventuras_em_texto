class Nivel
  attr_accessor :qtd_sobe_ataque, :qtd_sobe_vida, :nivel_maximo

  def initialize(qtd_sobe_ataque, qtd_sobe_vida, nivel_maximo)
    @qtd_sobe_ataque = qtd_sobe_ataque
    @qtd_sobe_vida = qtd_sobe_vida
    @nivel_maximo = nivel_maximo
  end

end