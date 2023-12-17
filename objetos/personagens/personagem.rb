class Personagem
  attr_accessor :ataque, :vida, :vida_maxima, :nome

  def initialize(ataque: 1, vida_maxima: 10, vida: nil, nome: "personagem")
    @vida_maxima = vida_maxima
    
    unless vida.nil? || vida > vida_maxima
      @vida = vida
    else
      @vida = vida_maxima
    end
    
    @ataque = ataque
    @nome = nome
  end

  def atacar
    self.ataque
  end

  def receber_dano(dano)
    self.vida -= dano
    self.vida = 0 if self.vida < 0
    puts "#{self.nome} recebeu #{dano} pontos de dano!"
  end

  def receber_cura(cura)
    self.vida += cura
    self.vida = self.vida_maxima if self.vida > self.vida_maxima
    puts "#{self.nome} recebeu #{cura} pontos de cura"
  end

  def ta_vivo?
    self.vida > 0
  end

end
