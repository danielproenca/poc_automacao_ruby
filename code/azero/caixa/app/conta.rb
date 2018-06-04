class Conta
    attr_accessor :saldo, :mesagem_saida
    
    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if valor > @saldo
            @mesagem_saida = 'Saldo insuficiente!'
        elsif
            valor > 700
            @mesagem_saida = 'Valor superior ao máximo permitido'
        else
            @saldo -= valor
            @mesagem_saida = 'Saque realizado com sucesso!'
        end
    end
end    