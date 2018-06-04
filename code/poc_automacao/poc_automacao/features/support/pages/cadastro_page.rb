# Classe onde implementamos a buscas do elementos
class CadastroPage < SitePrism::Page
  set_url '/admin/accounts/customers/add'
  element :campo_first_name, 'input[name=fname]'
  element :campo_last_name, 'input[name=lname]'
  element :campo_email, 'input[name=email]'
  element :campo_password, 'input[name=password]'
  element :campo_mobile, 'input[name=mobile]'
  element :campo_address1, 'input[name=address1]'
  element :campo_address2, 'input[name=address2]'
  element :botao_cadastrar, '.panel-footer btn'
  element :botao_pesquisar, '.xcrud-search-toggle'
  element :campo_pesquisar, 'input[name=phrase]'
  element :botao_go, '#content > div > div.panel-body > div > div > div.xcrud-ajax > div.xcrud-nav > span.xcrud-search.form-inline > span > a'

  # Funcionalidade onde preenche o campo pais
  def selecionar_pais(pais)
    find('.select2-choice').click
    find('.select2-input').set pais
    find('option', text: pais).select_option
  end

  # Funcionalidade onde preenchemos os demais campos
  def preencher(fnome, lnome, email, senha, mobile, address1, address2)
    campo_first_name.set fnome
    campo_last_name.set lnome
    campo_email.set email
    campo_password.set senha
    campo_mobile.set mobile
    campo_address1.set address1
    campo_address2.set address2
  end

  # Funcionalidade onde clicamos no botao
  def cadastrar
    click_button 'Submit'
  end

  # Funcionalidade onde realizamos a pesquisa
  def pesquisar(campo_pesquisa)
    botao_pesquisar.click
    campo_pesquisar.set campo_pesquisa
    botao_go.click
  end
end