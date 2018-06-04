# Quando("faço login com {string} e {string}") do |email, senha|
#     visit '/acessar'
    
#     #Para buscar um elemento por ID usamos o #
#     #Para buscar um elemento por classe usamos o "."
#     #Para buscar montar um seletor usamos a seguinte regra
#        #elemento[atributo=valor_atributo]
#     find('#email').set email
#     find('input[type=password]').set senha
#     find('#do-login').click
# end
  
# Então("vejo meu nome {string} na área logada") do |nome_usuario|
#   menu_usuario = find('nav #navbarDropdown')
#   expect(menu_usuario).to have_content nome_usuario
# end

# Então("vejo meu a mensagem {string}") do |mesangem|
#   msg = find('.alert')
#   expect(msg.text).to eql mensagem
# end

# Quando("tento logar com os seguintes dados:") do |table|
#   visit '/acessar'

#   @mensagems = []
#   @dados_usuario = table.hashes
#   @dados_usuario.each do |dados|
#     find('#email').set dados[:email]
#     find('input[type=password]').set dados[:senha]
#     find('#do-login').click
#     msg = find('.alert')
#     @mensagems.push('mensagem' => msg.text)
#   end
# end

# Então("vejo as seguintes mensagem:") do |table|
#    expect(@mensagems).to eql table.hashes
# end

#Page Objects

Dado("que acessei a pagina login") do
  @login_page.load
end

Quando("faço login com {string} e {string}") do |email, senha|
  @login_page.logar(email, senha)
end

Então("vejo meu nome {string} na área logada") do |nome_usuario|
  expect(@home_page.menu_usuario).to have_content nome_usuario
end

Então("vejo meu a mensagem {string}") do |mesangem|
  expect(@login_page.alerta.text).to eql mensagem
end

Quando("tento logar com os seguintes dados:") do |table|
  @login_page.load

  @mensagems = []
  @dados_usuario = table.hashes
  
  @dados_usuario.each do |dados|
    @login_page.logar(dados[:email], dados[:senha])
    @mensagems.push('mensagem' => @login_page.alerta.text)
  end
end

Então("vejo as seguintes mensagem:") do |table|
 expect(@mensagems).to eql table.hashes
end