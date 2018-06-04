#V.1 e V.2
# Dado("que eu preencho o campo nome com {string}") do |nome|
#     @nome = nome
# end
  
# Dado("preencho o campo email com {string}") do |email|
#     @email = email
# end
  
# #Criar uma variável de instancia e pega a informação do documento Cadastro.feature
# Dado("preencho o campo senha com {string}") do |senha|
#     @senha = senha
# end
  
# Quando("clico em cadastrar") do
#     visit 'https://ninjamotors.herokuapp.com/cadastre-se'
#     find('#full-name').set @nome
#     find('#email').set @email
#     find('#password').set @senha
#     find('#do-sign-up').click
# end
  
# Então("meu Cadastro deve ocorrer com sucesso") do
#     menu_usuario = find('#navbarDropdown')
#     expect(menu_usuario.text).to eql @nome
# end
  
# Então("devo ver a mesangem {string}") do |mensagem|
#     @alerta = find('.alert')
#     expect(@alerta.text).to eql mensagem
# end

#V3
# Dado("que eu tenho o seguinte cadastro") do |table|
#     @usuario = table.rows_hash
# end
  
# Quando("clico em cadastrar") do
#     visit '/cadastre-se'
#     find('#full-name').set @usuario[:nome]
#     find('#email').set @usuario[:email]
#     find('#password').set @usuario[:senha]
#     find('#do-sign-up').click
# end
  
# Então("meu Cadastro deve ocorrer com sucesso") do
#     menu_usuario = find('#navbarDropdown')
#     expect(menu_usuario.text).to eql @usuario[:nome]
# end
  
# Então("devo ver a mesangem {string}") do |mensagem|
#     @alerta = find('.alert')
#     expect(@alerta.text).to eql mensagem
# end

#page objects
Dado("que eu tenho o seguinte cadastro") do |table|
    #@cadastro = table.rows_hash
    @usuario = table.rows_hash
    @cadastro_page.load
end
  
Quando("clico em cadastrar") do
    #@cadastro_page.cadastrar(@cadastro[:nome], @cadastro[:email], @cadastro[:senha])
    @cadastro_page.cadastrar(@usuario)
    sleep 15
end

Então("vejo um loader com a mensagem {string}") do |mensagem|
  #expect(@home_page.popup.titulo.text).to eql mensagem
  puts mensagem
end
  
Então("sou autenticado automaticamente") do
  expect(@home_page.menu_usuario).to have_content @usuario[:nome]
end