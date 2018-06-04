
# LoginPage representa a pagina Login
class LoginPage < SitePrism::Page
  set_url '/acessar'

  element :campo_email, '#email'
  element :campo_senha, 'input[type=password]'
  element :botao_logar, '#do-login'
  element :alerta, '.alert'

  def logar(email, senha)
    campo_email.set email
    campo_senha.set senha
    botao_logar.click
  end

end
