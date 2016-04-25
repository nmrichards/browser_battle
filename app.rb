require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'' ''Hej!'
end

get '/secret' do
  'This is susspposed to be secret! Go away!'
end

get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end
