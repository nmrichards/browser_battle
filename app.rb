require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello!'' ''Hej!'
end

get '/secret' do
  'This is supposed to be secret! Go away!'
end
