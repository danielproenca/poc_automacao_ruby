
Dado('que possuo o seguinte veículo:') do |table|
  @anuncio = table.hashes
  DAO.new.remover_anuncio(@anuncio.first)
end

Dado('eu ja cadastrei anteriormente') do
  steps %(
    Quando faço o anúncio deste veículo
  )
  @home_page.popup.botao_ok.click
end

Quando('faço o anúncio deste veículo') do
  @anunciar_page.load
  @anunciar_page.wait_for_combo_marca
  @anunciar_page.cadastrar(@anuncio.first)
end

Então('devo ver a mensagem de sucesso:') do |mensagem_sucesso|
  expect(@home_page.popup.conteudo.text).to eql mensagem_sucesso
end

Então('devo ver a mensagem de alerta:') do |mensagem_alerta|
  expect(@home_page.popup.conteudo.text).to eql mensagem_alerta
end

Então('somente {int} registro deve ser exibido na lista') do |item|
  @anunciar_page.lista.each do |l|
    puts l.text
  end
end
