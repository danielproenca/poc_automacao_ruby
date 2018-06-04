class LoginPage < SitePrism::Page
  #Setar uma url
  set_url '/acessar'
  
  #Para buscar um elemento por ID usamos o #
  #Para buscar um elemento por classe usamos o "."
  #Para buscar montar um seletor usamos a seguinte regra
  #elemento[atributo=valor_atributo]
  element :campo_email, '#email'
  element :campo_senha, 'input[type=password]'
  element :botao_logar, '#do-login'
  element :alerta     , '.alert'

  def logar(email, senha)
    campo_email.set email
    campo_senha.set senha
    botao_logar.click
  end

end