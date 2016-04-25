require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Whattup"
end

get '/cat' do
  "<div style='border: 10px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
   </div>"
end
