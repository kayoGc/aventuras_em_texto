class Personagem
  attr_accessor :ataque, :vida, :vida_maxima

  def initialize(ataque: 1, vida_maxima: 10, vida: nil)
    @vida_maxima = vida_maxima
    
    unless vida.nil? || vida > vida_maxima
      @vida = vida
    else
      @vida = vida_maxima
    end
    
    @ataque = ataque
  end

  def atacar
    self.ataque
  end

  def receber_dano(dano)
    self.vida -= dano
    self.vida = 0 if self.vida < 0
  end

  def receber_cura(cura)
    self.vida += cura
    self.vida = self.vida_maxima if self.vida > self.vida_maxima
  end

  def ta_vivo?
    return true if self.vida > 0
    false
  end

end
