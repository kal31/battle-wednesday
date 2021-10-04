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

get '/cat' do
  erb(:index)
end