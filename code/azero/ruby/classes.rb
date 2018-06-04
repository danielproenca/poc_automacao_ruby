#criação de classes no ruby, não é burocratica diferente do java.
class Cachorro
  attr_accessor :nome, :cor, :idade
  
  #Metodo construtor
  def initialize(nome, cor, idade)
    @nome  = nome
    @cor   = cor
    @idade = idade
  end

  def late
    puts @nome
    puts 'au, au...'
  end
end

snoop = Cachorro.new('Snoop', 'Preto e Branco', 5)
snoop.late

snoop = Cachorro.new('Spike', 'Cinza', 3)
snoop.late

class Gato
    attr_accessor = :nome, :cor, :raca
    
    def inicializa(nome, cor, raca)
        @nome = nome
        @cor  = cor
        @raca = raca
    end

    def Mia
        puts @nome
        puts "Miao, Miao"
    end
end
    miao = Gato.new("Tom", "Cinza", "Persa")
    miao.Mia
