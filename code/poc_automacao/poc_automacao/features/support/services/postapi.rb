class PostApi
  include HTTParty
  
  def enviar_post
    @body = {
      "ID": Faker::Number.number(3),
      "IDBook": Faker::Number.number(4),
      "FirstName": Faker::Name.first_name,
      "LastName": Faker::Name.last_name
  }.to_json
    @envio = 
      HTTParty.post('http://fakerestapi.azurewebsites.net/api/Authors', 
     # HTTParty.post('http://fakerestapi.azurewebsites.net/Help/Api/POST-api-Users',
     :body => @body,
     :headers => {
         'Content-Type' => 'application/json'
      }
    )
  end

  def valida_retorno
    if @envio.code == 200
        puts @envio.body
    else
        puts "Erro #{@envio.code}"
    end    
  end
end