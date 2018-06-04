#language: pt

#n
Funcionalidade: Cadastro de Usuários
Sendo um usuário
Posso fazer meu cadastro
Para poder anunciar o meu carro

#Nome completo do usuário
#Email do usuário
#Senha do usuário
#Senha de ter no minimo 6 caracteres

#V.1
# @cadastro_simplificado
# Cenario: Cadastro simplificado
# Dado que eu preencho o campo nome com "Daniel Proenca"
# E preencho o campo email com "daniel.glp@hotmail.io"
# E preencho o campo senha com "123456"
# Quando clico em cadastrar
# Então meu Cadastro deve ocorrer com sucesso
#V.1
# @email_Incorreto
# Cenario: Email incorreto
#     Dado que eu preencho o campo nome com "Daniel Proenca"
#     E preencho o campo email com "daniel.glp$hotmail.com"
#     E preencho o campo senha com "123456"
#     Quando clico em cadastrar
#     Então devo ver a mesangem "Email inválido."

#  Cenario: Nome em branco
#     Dado que eu preencho o campo nome com ""
#     E preencho o campo email com "daniel.glp@hotmail.com"
#     E preencho o campo senha com "123456"
#     Quando clico em cadastrar
#     Então devo ver a mesangem "Nome deve ser preenchido"

# Cenario: Email em branco
#     Dado que eu preencho o campo nome com "Daniel Proenca"
#     E preencho o campo email com ""
#     E preencho o campo senha com "123456"
#     Quando clico em cadastrar
#     Então devo ver a mesangem "Nome deve ser preenchido"

# Cenario: Senha em branco
#     Dado que eu preencho o campo nome com "Daniel Proenca"
#     E preencho o campo email com "daniel.glp@hotmail.com"
#     E preencho o campo senha com ""
#     Quando clico em cadastrar
#     Então devo ver a mesangem "Nome deve ser preenchido"

#  Cenario: Senha com menos de 6 caracteres
#     Dado que eu preencho o campo nome com "Daniel Proenca"
#     E preencho o campo email com "daniel.glp@hotmail.com"
#     E preencho o campo senha com "1234"
#     Quando clico em cadastrar
#     Então devo ver a mesangem "Senha deve ter no minimo 6 caracteres."

#V.2 - Cenários outline, apenas quando o comportamento for o mesmo
    # @tentativa_cadastro
    # Esquema do Cenário: Tentativa de Cadastro
    #   Dado que eu preencho o campo nome com "<nome>"
    #   E preencho o campo email com "<email>"
    #   E preencho o campo senha com "<senha>"
    #   Quando clico em cadastrar
    #   Então devo ver a mesangem "<mensagem>"

    #   Exemplos:
    #   | nome   | email               | senha  | mensagem                                |
    #   | Daniel | daniel$teste.com.br | 123456 | Email inválido.                         |
    #   |        | daniel@teste.com.br | 123456 | Nome não informado.                     |
    #   | Daniel |                     | 1234   | Email não informado.                    |
    #   | Daniel | daniel@teste.com.br |        | Senha não informada.                    |
    #   | Daniel | daniel@teste.com.br | 1234   | Senha deve ter pelo menos 6 caracteres. |

#V3 - Quando o formulário é acima de 3 campos.
    @cadastro_simplificado
    Cenario: Cadastro simplificado
        Dado que eu tenho o seguinte cadastro
             | nome  | Daniel Proença |
             | email | daniel@af.com  |
             | senha | 123456         |
        Quando clico em cadastrar
        Então vejo um loader com a mensagem "Estamos preparando as coisas..."
        E sou autenticado automaticamente
    #Desafio
    @tentativa_cadastro
    Esquema do Cenário: Tentativa de Cadastro
      Dado que eu tenho o seguinte cadastro
             | nome  | <nome>  |
             | email | <email> |
             | senha | <senha> |
      Quando clico em cadastrar
      Então devo ver a mesangem "<mensagem>"

      Exemplos:
      | nome   | email               | senha  | mensagem                                |
      | Daniel | daniel$teste.com.br | 123456 | Email inválido.                         |
      |        | daniel@teste.com.br | 123456 | Nome não informado.                     |
      | Daniel |                     | 1234   | Email não informado.                    |
      | Daniel | daniel@teste.com.br |        | Senha não informada.                    |
      | Daniel | daniel@teste.com.br | 1234   | Senha deve ter pelo menos 6 caracteres. |