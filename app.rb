require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'' ''Hej!'
end

get '/secret' do
  'This is supposed to be secret! Go away!'
end

get '/random-cat' do
  @name = %w(Amigo Viking Oscar).sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
