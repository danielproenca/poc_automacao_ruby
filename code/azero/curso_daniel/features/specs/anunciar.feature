#language: pt

Funcionalidade: Anunciar meu carro
    Para que eu possa receber oferta de comrpa do meu veiculo
    Sendo um usuário
    Posso anuncair meu carro

    - Regras
     - Se o carro for blindado, não permite o anuncio
     - Usuário não pode fazer anuncio duplicado

    @anuncio @auth
    Cenário: Criar anúncio
        Dado que eu possuo o seguinte veículo:
         | marca     | modelo | versao   | ano  | preco   | blindado |
         | Chevrolet | Camaro | Blue 791 | 1979 | 250.000 | nao      |
        #Tecnica de doc string
        Quando faço o anuncio desse veículo
        Então devo ver a mensagem de sucesso:
        """
        Parabéns. Seu carro foi anunciado com sucesso.
        """

    @anuncio_duplicado @auth
    Cenário: Anuncio Duplicado
        Dado que eu possuo o seguinte veículo:
         | marca     | modelo | versao   | ano  | preco   | blindado |
         | Chevrolet | Camaro | Blue 791 | 1979 | 250.000 | nao      |
        Mas eu cadastrei anteriormente
        Quando faço o anuncio desse veículo
        Então devo ver a mensagem de alerta:
        """
        Este anuncio já está cadastrado.
        """

        @blindado @auth
        Cenário: Carro blindado
        Dado que eu possuo o seguinte veículo:
         | marca     | modelo | versao   | ano  | preco   | blindado |
         | Chevrolet | Camaro | Blue 791 | 1979 | 250.000 | sim      |
        Quando faço o anuncio desse veículo
        Então devo ver a mensagem de alerta:
        """
        Não vendemos carro blindado
        """
    # Resolver na próxima aula    
    # @anuncio_duplicado_lista @auth
    # Cenário: Anuncio duplicado na lista
    #     Dado que eu possuo o seguinte veículo:
    #      | marca     | modelo | versao   | ano  | preco  |
    #      | Ford      | Focus  | 2.4 auto | 2016 | 70.000 |
    #     Mas eu cadastrei anteriormente
    #     Quando faço o anuncio desse veículo
    #     Então somente 1 registro deve ser exibid na lista
