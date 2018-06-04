# app.rb
require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/reloader' if development?

require_relative 'routes/movie_route'

get '/' do
  @env = ENV['RACK_ENV'].to_s.upcase
  "Welcome to Movie API v1 | Environment: #{@env}."
end
