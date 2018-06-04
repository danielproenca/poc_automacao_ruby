# language: pt

Funcionalidade: Realizar um get na api

Cenario: Retornar apenas informacoes true e retornar id e title
  Quando eu envio um get para api com completed igual a true
  Então ela deve retornar o id e o titulo das informacoes que estejam com true