#criação de classes no ruby, não é burocratica diferente do java.
class Animal
  attr_accessor :nome, :cor, :idade
  
  #Metodo construtor
  def initialize(nome, cor, idade)
    @nome  = nome
    @cor   = cor
    @idade = idade
  end
end

class Cachorro < Animal
  def late
    puts @nome
    puts 'au, au...'
  end
end

class Gato < Animal
    def Mia
        puts @nome
        puts "Miao, Miao"
    end
end

snoop = Cachorro.new('Snoop', 'Preto e Branco', 5)
snoop.late

snoop = Cachorro.new('Spike', 'Cinza', 3)
snoop.late

miao = Gato.new("Tom", "Cinza", "Persa")
miao.Mia
