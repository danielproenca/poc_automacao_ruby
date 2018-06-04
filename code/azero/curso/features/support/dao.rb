require 'mongo'

# DAO é a classe helper para operações no banco de dados
class DAO
  attr_accessor :client

  Mongo::Logger.logger = Logger.new('log/mongo.log')

  def initialize
    str_conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors'
    @client = Mongo::Client.new(str_conn)
  end

  def remover_anuncio(anuncio)
    sells = @client[:sells]
    query = {
      brand: anuncio[:marca],
      model: anuncio[:modelo],
      desc: anuncio[:versao]
    }
    sells.delete_many(query)
  end
end
