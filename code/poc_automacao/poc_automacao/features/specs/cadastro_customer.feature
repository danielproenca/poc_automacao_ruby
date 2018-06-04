# language: pt

Funcionalidade: Realizar cadastro de um novo curstomer

Cenario: Realizar Login
  Quando realizo login com 'admin@phptravels.com' e senha 'demoadmin'
  Entao exibe a area logada

Cenario: Realizar o cadastro de um novo customer
  Dado que eu realizo login
  E que eu preencha os campos de cadastro
     | pais   | Brazil  |
     | senha  | 123456  |
  Quando realizo o cadastro
  Entao adicionamos um novo customer na grid