

Before do
  @home_page = HomePage.new
  @login_page = LoginPage.new
  @cadastro_page = CadastroPage.new
  @anunciar_page = AnunciarPage.new

  page.current_window.resize_to(1280, 800)
end

Before('@auth') do
  @login_page.load
  @login_page.logar('daniel@teste.com.br', '123456')
  @home_page.wait_for_menu_usuario
end

Before('@cadastro') do
  visit '/api/user/daniel@af.io/delete'
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').downcase!
  nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '_')
  screenshot = "log/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
end
