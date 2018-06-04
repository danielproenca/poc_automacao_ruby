#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um usuário 
    Posso fazer meu Cadastro
    Para poder anunciar o meu carro

    @cadastro
    Cenário: Cadastro simplificado

        Dado que eu tenho o seguinte cadastro
            | nome  | Fernando Papito    |
            | email | fernando@papito.io |
            | senha | 123456             |
        Quando faço o meu cadastro
        Então eu vejo um loader com a mensagem "Estamos preparando as coisas..."
        E sou autenticado automaticamente

    @cadastro_tentativa
    Esquema do Cenario: Tentativa de cadastro

        Dado que eu tenho o seguinte cadastro
            | nome  | <nome>  |
            | email | <email> |
            | senha | <senha> |
        Quando faço o meu cadastro
        Então devo ver a mensagem "<mensagem>"

        Exemplos:
        | nome     | email                | senha  | mensagem                                |
        | Fernando | fernando#qaninja.com | 123456 | Email inválido.                         |
        | Fernando | fernando@qaninja.com | 12345  | Senha deve ter pelo menos 6 caracteres. |
        |          | fernando@qaninja.com | 123456 | Nome não informado.                     |
        | Fernando |                      | 123456 | Email não informado.                    |
        | Fernando | fernando@qaninja.com |        | Senha não informada.                    |
