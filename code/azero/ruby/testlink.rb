@cts = Array.new

def adiciona_ct
    system('clear')
    puts "Informe um cenário de teste:"
    nome = STDIN.gets
    @cts.push(nome)
end

def lista_cts
  puts "Listando os casos de testes:"
   @cts.each do |ct| 
    puts ct
   end
end

@opcao

begin
    puts '########### Test Link RB ###########'
    puts ' 1 - Adicionar um Cenário'
    puts ' 2 - Listar Cenários'
    puts ' 3 - Sair do Sistema'
    puts '########### Test Link RB ###########'
    
    @opcao = STDIN.gets.to_i

    case @opcao
    when 1
        adiciona_ct
    when 2
        lista_cts
    when 3
        puts 'Logout realizado com sucesso'
    else
        puts 'Opção inválida'
    end
end while @opcao !=3