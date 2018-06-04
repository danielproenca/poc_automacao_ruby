Quando('realizo login com {string} e senha {string}') do |email, senha|
  @login_page.load
  @login_page.logar(email, senha)
end
  
Entao('exibe a area logada') do
  sleep 2
  expect(@login_page.area_logada.text).to eql 'DASHBOARD'
end