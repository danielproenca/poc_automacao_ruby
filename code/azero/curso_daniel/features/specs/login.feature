#language: pt

Funcionalidade: Login
  Para que eu possa dar lances ou cadastrar anuncios
  Sendo um usúario cadastrado
  Posso Logar no Sistema


# #V.1 Login
# @login
# Cenário: Login do usuário
#     Quando faço login com "daniel@teste.com.br" e "123456"
#     Então vejo meu nome "Daniel Proenca" na área logada

# @login_invalido
# Esquema do Cenario: login inválido
#   Quando faço login com "<email>" e "<senha>"
#   Então vejo a mensagem "<mesangem>"
  
#   Exemplos:
#   | email               | senha  | mensagem                      |
#   | daniel#teste.com.br | 123456 | Email inválido.               |
#   |                     | 123456 | Email não informado.          |
#   | daniel@teste.com.br |        | Senha não informada.          |
#   | daniel@teste.com.br | 123456 | Usuário e/ou senha inválidos. |

# @tentativa_login
# Cenario: Usuario tentando logar
#   Quando tento logar com os seguintes dados:
#   | email               | senha  |
#   | daniel#teste.com.br | 123456 |
#   |                     | 123456 |
#   | daniel@teste.com.br |        |
#   | fer@te.com.br       | 123456 | 

#   Então vejo as seguintes mensagem:  
#   | mensagem                      |
#   | Email inválido.               |
#   | Email não informado.          |
#   | Senha não informada.          |
#   | Usuário e/ou senha inválidos. |

#Com contexto
Contexto: Acessar
  Dado que acessei a pagina login

@login
Cenário: Login do usuário
    Quando faço login com "daniel@teste.com.br" e "123456"
    Então vejo meu nome "Daniel Proenca" na área logada

@login_invalido
Esquema do Cenario: login inválido
  Quando faço login com "<email>" e "<senha>"
  Então vejo a mensagem "<mesangem>"
  
  Exemplos:
  | email               | senha  | mensagem                      |
  | daniel#teste.com.br | 123456 | Email inválido.               |
  |                     | 123456 | Email não informado.          |
  | daniel@teste.com.br |        | Senha não informada.          |
  | daniel@teste.com.br | 123456 | Usuário e/ou senha inválidos. |

@tentativa_login
Cenario: Usuario tentando logar
  Quando tento logar com os seguintes dados:
  | email               | senha  |
  | daniel#teste.com.br | 123456 |
  |                     | 123456 |
  | daniel@teste.com.br |        |
  | fer@te.com.br       | 123456 | 

  Então vejo as seguintes mensagem:  
  | mensagem                      |
  | Email inválido.               |
  | Email não informado.          |
  | Senha não informada.          |
  | Usuário e/ou senha inválidos. |