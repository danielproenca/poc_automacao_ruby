Before do
    @cadastro_page = CadastroPage.new
    @home_page = HomePage.new
    @login_page = LoginPage.new
    @anuncioar_page = AnunciarPage.new
    page.current_window.resize_to(1280, 800)
end

Before('@auth') do
    @login_page.load
    @login_page.logar('daniel@teste.com.br', '123456')
    sleep 15
    #@home_page.wait_for_menu_usuario
end

Before('@cadastro_simplificado') do
    visit '/api/user/daniel@af.com/delete'
end

After do |scenario|
    nome_cenario = scenario.name.tr(' ','_').downcase!
    screenshot = "log/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique aqui para ver a evidência')
end