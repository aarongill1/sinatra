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

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  method = "post"
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end
