class AnunciarPage < SitePrism::Page
    #Representa a pagina de criação de novo anuncio
    set_url '/vender-meu-carro'
    element :formulario, '#car-seller'
    element :combo_marca, '#brand'
    element :campo_versao, '#version'
    element :campo_ano, '#year'
    element :campo_preco, '#price'
    element :botao_anunciar, '#sell-my-car'
    elements :lista, 'table tbody tr'
    element :check_blindado, '#armoredCar'  
    
    def selecionar_marca(marca)
        combo_marca.find('option', text: marca).select_option
    end

    def selecionar_modelo(modelo)
       sleep 5
       #find('input[id=radio' + modelo + ']').click
       find("input[id=radio#{modelo}]").click
    end

    def cadastrar_anuncio(carro)
        selecionar_marca carro[:marca]
        selecionar_modelo carro[:modelo]
        campo_versao.set carro[:versao]
        campo_ano.set carro[:preco]
        campo_preco.set carro[:preco]
        
        
        # if carro[:blindado] == 'sim'
        #     check_blindado.click
        # end

        check_blindado.click if carro[:blindado].eql?('sim')
        
        
        botao_anunciar.click
        sleep 5
    end
end