#language: pt

Funcionalidade: Login
    Para que eu possa dar lances ou cadastrar anuncios
    Sendo um usuário cadastrado
    Posso logar no sistema

    Contexto: Acessar
        Dado que acessei a página login

    @login
    Cenario: Login do usuário

        Quando faço login com "eu@papito.io" e "123456"
        Então vejo meu nome "Fernando Papito" na area logada    

    Esquema do Cenario: Login sem sucesso

        Quando faço login com "<email>" e "<senha>"
        Então vejo a seguinte mensagem "<mensagem>"

        Exemplos:
        | email                     | senha  | mensagem                      |
        | eu@papito.io              | 111111 | Usuário e/ou senha inválidos. |
        | padrekevedo@noekziste.com | 123456 | Usuário e/ou senha inválidos. |
        | email#gmail.com           | 111222 | Email inválido.               |

    Cenario: Usuario tentando logar

        Quando tento logar com os seguintes dados:
            | email            | senha  |
            | eu@papito.io     | 111111 |
            | eu@papito.com    | 123456 |
            | eu&papito.io     | 111222 |
        Então devo ver as seguintes mensagens:
            | mensagem                      |
            | Usuário e/ou senha inválidos. |
            | Usuário e/ou senha inválidos. |
            | Email inválido.               | 


    
    