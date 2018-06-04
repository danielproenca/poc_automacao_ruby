# Envia o comando GET para api.
Quando('eu envio um get para api com completed igual a true') do
  @get_api.realizar_get
end

# Retorna as informacoes do get
Então('ela deve retornar o id e o titulo das informacoes que estejam com true') do
  @get_api.retornar_informacaoes
end