=begin
    História de Usuário
    Sendo um cliente correntista do banco
    Posso sacar dinheiro em caixas eletrônicos
    Para poder comprar em lugares que não aceitam cartões
    
    Cenários:
    #Usuário deve ter uma conta corrente
    #Ao fazer um saque, deve deduzir do saldo do cliente
    #No final deve exibir uma mensagem de sucesso
    #O Valor de saque maximo será de 700 reais
=end

require_relative '../app/conta'

 describe('Saque no caixa eletronico') do
  it('Deve Realizar um saque') do
    cliente = Conta.new(1000)
    cliente.saca(500)
    expect(cliente.saldo).to eql 500
    expect(cliente.mesagem_saida).to eql 'Saque realizado com sucesso!'
  end
  it('Quando o valor do saque é maior que o saldo disponível') do
    cliente = Conta.new(100)
    cliente.saca(200)
    expect(cliente.saldo).to eql 100
    expect(cliente.mesagem_saida).to eql 'Saldo insuficiente!'
  end
  it('Quando o valor do saque do saque é superior ao máximo permitido por dia') do
   cliente = Conta.new(1000)
   cliente.saca(701)
   expect(cliente.saldo).to eql 1000
   expect(cliente.mesagem_saida).to eql 'Valor superior ao máximo permitido' 
  end
end