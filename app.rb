require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "this is a secret page!"
end

get '/cats' do
  "beware of the cats!"
end

get '/cat' do
  erb(:index)
end
