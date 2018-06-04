
Dado('que acessei a página login') do
  @login_page.load
end

Quando('faço login com {string} e {string}') do |email, senha|
  @login_page.logar(email, senha)
end

Então('vejo meu nome {string} na area logada') do |nome_usuario|
  expect(@home_page.menu_usuario).to have_content nome_usuario
end

Então('vejo a seguinte mensagem {string}') do |mensagem|
  expect(@login_page.alerta.text).to eql mensagem # => valida o texto exato
end

Quando('tento logar com os seguintes dados:') do |table|
  @tentativa = table.hashes
  @mensagens = []

  @tentativa.each do |t|
    @login_page.logar(t[:email], t[:senha])
    @mensagens.push('mensagem' => @login_page.alerta.text)
  end
end

Então('devo ver as seguintes mensagens:') do |table|
  expect(@mensagens).to eql table.hashes
end
