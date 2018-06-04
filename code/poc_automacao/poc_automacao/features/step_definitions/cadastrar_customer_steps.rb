# Funcionalidade que realiza o login
Dado('que eu realizo login') do
  steps %(
    Quando realizo login com 'admin@phptravels.com' e senha 'demoadmin'
    Entao exibe a area logada
    )
end

# Funcionalidade que preenche os campos
Dado('que eu preencha os campos de cadastro') do |table|
  @dados = table.rows_hash

  @cadastro_page.load
  @fnome = Faker::Name.first_name
  @lnome = Faker::Name.last_name
  @email = Faker::Internet.email
  @phone = Faker::PhoneNumber.cell_phone
  @adress1 = Faker::Address.full_address
  @adress2 = Faker::Address.full_address
  @cadastro_page.preencher(@fnome, @lnome, @email, @dados[:senha], @phone, @adress1, @adress2)
  @cadastro_page.selecionar_pais(@dados[:pais])
end

# Funcionalidade para realizar o cadastro
Quando('realizo o cadastro') do
  @cadastro_page.cadastrar
  sleep 5
end

# Funcionalidade que valida os dados na grid
Entao('adicionamos um novo customer na grid') do
  @cadastro_page.pesquisar(@email)
  expect(page).to have_content @email
end