#language: pt

Funcionalidade: Anunciar meu carro
    Para que eu possa receber ofertas de compras
    Sendo um usuário
    Posso anunciar meu carro

    -Regras:
    - Usuário não pode fazer anuncio duplicado
    - Se o carro for blindado, não permite o anuncio

    @anuncio @auth
    Cenario: Criar anúncio

        Dado que possuo o seguinte veículo:
            | marca     | modelo | versao   | ano  | preco      | blindado |
            | Chevrolet | Camaro | Blue 79  | 1979 | 250.000,00 | nao      |
        Quando faço o anúncio deste veículo
        Então devo ver a mensagem de sucesso:
        """
        Parabéns. Seu carro foi anunciado com sucesso.
        """

    @duplicado @auth
    Cenario: Anuncio duplicado

        Dado que possuo o seguinte veículo:
            | marca  | modelo | versao          | ano  | preco     | blindado |
            | Ford   | Fusion | 2.4 automatico  | 2016 | 70.000,00 | nao      |
        Mas eu ja cadastrei anteriormente
        Quando faço o anúncio deste veículo
        Então devo ver a mensagem de alerta:
        """
        Este anúncio já está cadastrado.
        """

    @blindado @auth
    Cenario: Carro blindado

        Dado que possuo o seguinte veículo:
            | marca  | modelo | versao          | ano  | preco     | blindado |
            | Ford   | Fusion | 2.4 automatico  | 2016 | 70.000,00 | sim      |
        Quando faço o anúncio deste veículo
        Então devo ver a mensagem de alerta:
        """
        Não vendemos carro blindado.
        """

    # Arrumar o bug para resolver o cenário
    # @duplicado @auth
    # Cenario: Anuncio duplicado na lista

    #     Dado que possuo o seguinte veículo:
    #         | marca  | modelo | versao          | ano  | preco     |
    #         | Ford   | Focus  | 2.0 automatico  | 2016 | 20.000,00 |
    #     Mas eu ja cadastrei anteriormente
    #     Quando faço o anúncio deste veículo
    #     Então somente 1 registro deve ser exibido na lista