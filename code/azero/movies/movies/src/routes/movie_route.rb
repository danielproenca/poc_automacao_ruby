# movies.rb
require_relative '../helpers'

namespace '/api' do
  before do
    content_type 'application/json'
    headers 'Access-Control-Allow-Origin' => '*'
  end

  helpers do
    def get_movie
      @movie ||= Movie.where(id: params[:id]).first
    end

    def halt_if_movie_not_found!
      halt(404, { message: 'Movie Not Found' }.to_json) unless get_movie
    end

    def seri_movie(movie)
      MovieSerializer.new(movie).to_json
    end
  end

  get '/movies' do
    movies = Movie.all

    %i[title body].each do |filter|
      movies = movies.send(filter, params[filter]) if params[filter]
    end

    movies.map { |movie| MovieSerializer.new(movie) }.to_json
  end

  get '/movies/:id' do
    halt_if_movie_not_found!
    seri_movie(get_movie)
  end

  post '/movies' do
    movie = Movie.new(json_params)
    halt 422, seri_movie(movie) unless movie.save
    response.headers['_id'] = movie.id.to_s
    status 201
  end

  put '/movies/:id' do
    halt_if_movie_not_found!
    halt 422, seri_movie(get_movie) unless get_movie.update_attributes(json_params)
    seri_movie(get_movie)
  end

  delete '/movies/:id' do
    halt_if_movie_not_found!
    get_movie.destroy if get_movie
    status 200
  end
end
