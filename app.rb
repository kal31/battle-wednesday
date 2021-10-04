require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
 "I have no idea what I am doing."
end

get '/super-secret' do
  "I have no idea what I am doing."
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample 
    erb(:index)
end
get '/named-cat' do
    p params
    @name = params[:name]
      erb(:index)
  end