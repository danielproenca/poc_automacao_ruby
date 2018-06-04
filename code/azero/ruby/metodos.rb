#Se o resultado do teste for com bug o código será 1
#Se o resultado do teste for sem bug o código será 0

def achou_bug(resultado)
    case resultado
    when 0
        puts "Pode ir para produção"
    when 1
        puts "informe o desenvolvedor"
    else
        puts "código inválido"
    end
end

puts "Qual o resultado do teste? 0 - Sem Bugs | 1 - Com Bugs"
resultado = STDIN.gets.to_i

achou_bug(resultado)

