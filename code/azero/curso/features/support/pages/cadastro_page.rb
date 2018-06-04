
# CadastroPage e a classe que representa a pagina de cadastro
class CadastroPage < SitePrism::Page
  set_url '/cadastre-se'
  element :campo_nome, '#full-name'
  element :campo_email, '#email'
  element :campo_senha, 'input[placeholder=Senha]'
  element :botao_cadastrar, 'button[type=submit]'

  def cadastrar(usuario)
    campo_nome.set usuario[:nome]
    campo_email.set usuario[:email]
    campo_senha.set usuario[:senha]
    botao_cadastrar.click
  end
end
