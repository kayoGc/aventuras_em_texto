class Protagonista < Personagem
  attr_accessor :nivel, :obj_nivel

  def initialize(obj_nivel, ataque: 1, vida_maxima: 10, vida: nil, nome: "protagonista", nivel: 1)
    super(ataque: ataque, vida_maxima: vida_maxima, vida: vida, nome: nome)
    
    @nivel = nivel
    @obj_nivel = obj_nivel
  end

  def subir_nivel
    if self.nivel == self.obj_nivel.nivel_maximo || self.obj_nivel.nivel_maximo <= 0
      return puts "Personagem está no nivel máximo!" 
    end

    self.nivel += 1
    puts "Subiu para o nivel #{self.nivel}!"

    self.ataque += self.obj_nivel.qtd_sobe_ataque
    puts "Ataque subiu em #{self.obj_nivel.qtd_sobe_ataque}! Agora está em #{self.ataque}"
    
    self.vida += self.obj_nivel.qtd_sobe_vida
    puts "Vida subiu em #{self.obj_nivel.qtd_sobe_vida}! Agora está em #{self.vida}"
  end

end