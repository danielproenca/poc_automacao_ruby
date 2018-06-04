Dado("que eu possuo o seguinte veículo:") do |dados_veiculo|
    @anuncio = dados_veiculo.hashes
    #DAO.new.remover_anuncio(@anuncio.first)
end

Dado("eu cadastrei anteriormente") do
    steps %{Quando faço o anuncio desse veículo}
    @home_page.popup.botao_ok.click
    sleep 15
end

Quando("faço o anuncio desse veículo") do
    @anuncioar_page.load
    #@anuncioar_page.wait_for_combo_marca
    sleep 15
    @anuncioar_page.cadastrar_anuncio(@anuncio.first)
end

Então("devo ver a mensagem de sucesso:") do |mensagem_sucesso|
    #expect(@home_page.popup.conteudo).to have_content mensagem_sucesso
    expect(@home_page.popup.conteudo.text).to eql mensagem_sucesso
    sleep 5
end

Então("devo ver a mensagem de alerta:") do |mensagem_alerta|
    #expect(@home_page.popup.conteudo).to have_content mensagem_alerta
    expect(@home_page.popup.conteudo.text).to eql mensagem_alerta
    sleep 5
end

# Então("somente {int} registro deve ser exibid na lista") do |item|
#     anuncioar_page.lista.each do |l|
#         puts l.text
#     end
# end