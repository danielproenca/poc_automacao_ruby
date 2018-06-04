#Array
instrutores = ['Fernando', 'Oscar', 'Dennis', 'Caio', 'Borel', 'Yago']
#Array de String
#instrutores= %w[Fernando Oscar Dennis]

# puts instrutores.class
# puts instrutores[1]

# puts instrutores.size
# puts instrutores.length

# #Loops for
# for item in (0...instrutores.size)
#     puts instrutores[item]
# end

#loop foreach
# instrutores.each do |instrutor|
#     puts instrutor
# end

# #Loop While
# inicial = 0
# maximo = instrutores.size

# while inicial < maximo
#     puts instrutores[inicial]
#     inicial = inicial + 1
# end

#loop begin
 inicial = 0
 maximo = instrutores.size
begin
    puts instrutores[inicial]
    inicial +=1
end while inicial < maximo