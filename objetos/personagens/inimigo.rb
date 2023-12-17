class Inimigo < Personagem

  def initialize(ataque: 1, vida_maxima: 10, vida: nil, nome: "Inimigo")
    super(ataque: ataque, vida_maxima: vida_maxima, vida: vida, nome: nome)
  end 

end