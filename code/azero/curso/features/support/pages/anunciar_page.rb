
# AnunciarPage e a classe que representa a pagina de criacao de novo anuncio
class AnunciarPage < SitePrism::Page
  set_url '/vender-meu-carro'
  element :formulario, '#car-seller'
  element :combo_marca, '#brand'
  element :campo_versao, '#version'
  element :campo_ano, '#year'
  element :campo_preco, '#price'
  element :botao_anunciar, '#sell-my-car'
  element :check_blindado, '#armoredCar'

  elements :lista, 'table tbody tr'

  def selecionar_marca(marca)
    combo_marca.find('option', text: marca).select_option
  end

  def selecionar_modelo(modelo)
    find("input[id=radio#{modelo}]").click
  end

  def cadastrar(carro)
    selecionar_marca carro[:marca]
    selecionar_modelo carro[:modelo]
    campo_versao.set carro[:versao]
    campo_ano.set carro[:ano]
    campo_preco.set carro[:preco]
    check_blindado.click if carro[:blindado].eql?('sim')
    botao_anunciar.click
  end
end
