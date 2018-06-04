Dado('que eu tenho o seguinte cadastro') do |table|
  @usuario = table.rows_hash
  @cadastro_page.load
end

Quando('faço o meu cadastro') do
  @cadastro_page.cadastrar(@usuario)
end

Então('eu vejo um loader com a mensagem {string}') do |mensagem|
  @home_page.wait_for_popup
  expect(@home_page.popup.titulo.text).to eql mensagem

  # @home_page.wait_until_popup_invisible(10)

  # puts @home_page.has_popup?
  sleep 10

  # while @home_page.has_popup? == true
  #   break if @home_page.has_popup? == false
  # end

  expect(@home_page.has_popup?).to be false
end

Então('sou autenticado automaticamente') do
  expect(@home_page.menu_usuario).to have_content @usuario[:nome]
end
