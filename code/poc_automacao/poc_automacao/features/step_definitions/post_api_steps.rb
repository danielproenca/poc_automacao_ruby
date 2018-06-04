Quando("que eu envie um post para api") do
  @post_api.enviar_post
end
  
Entao("validamos o retorno e o response") do
    @post_api.valida_retorno
end