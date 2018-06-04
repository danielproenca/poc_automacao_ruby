# Classe de service object que retorna os informacoes da api.
class GetApi
  include HTTParty
  base_uri 'http://jsonplaceholder.typicode.com'

  # Realiza o get da api para retornar as informacoes
  def realizar_get
    @retorno = self.class.get('/todos')
  end

  # Realiza a busca das informacoes que sejam igual a true
  def retornar_informacaoes
    @retorno.each do |item|
      case @retorno.code
        when 200
          if item['completed'].eql?(true)
            puts item['id']
            puts item['title']
          end
        end
      end
  end
end