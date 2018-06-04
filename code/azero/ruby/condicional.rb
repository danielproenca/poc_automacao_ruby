=begin
idade = 0

puts "Qual a sua idade?"
#recebe um valor e converte para inteiro
idade = STDIN.gets.to_i
# puts idade
# puts idade.class

#condicional IF

if idade >= 18
    puts "Parabéns, você pode tirar sua habilitação"
else
    puts "Você não pode tirar a sua habilitação"
end
=end

#condicional unless
# conta_bloqueada = false

# unless conta_bloqueada
#     puts "fazendo login"
# else
#     puts "Entre em contato com o atendimento"
# end

# condicional elseif

#  puts "Qual é o dia da semana?"
#  dia_da_semana = STDIN.gets.to_i

# if dia_da_semana == 1
#     puts "Segunda-Feira"
# elsif dia_da_semana == 2
#     puts "Terça-Feira"
# end

#condicional Case
puts "Qual é o dia da semana?"
dia_da_semana = STDIN.gets.to_i

case dia_da_semana
when 1
    puts "Segunda"
when 2
    puts "Terça"
when 3
    puts "Quarta"
when 4
    puts "Quinta"
when 5
    puts "Sexta"
else
    puts "Fim de Semana"
end