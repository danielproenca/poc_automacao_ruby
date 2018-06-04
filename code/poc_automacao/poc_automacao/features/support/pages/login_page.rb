# Classe onde buscamos os elementos do login
class LoginPage < SitePrism::Page
  set_url '/admin'
  element :campo_email, 'input[name=email]'
  element :campo_senha, 'input[name=password]'
  element :botao_login, '.btn'
  element :area_logada, '.dash'

  def logar(email, senha)
    campo_email.set email
    campo_senha.set senha
    botao_login.click
  end
end