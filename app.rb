require 'sinatra'
<<<<<<< HEAD
set :session_secret, 'super secret'

get '/' do
  'Hello!'' ''Hej!'
end

get '/secret' do
  'This is supposed to be secret! Go away!'
end

get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
=======

get '/' do
  "Hello!"
end

get '/secret' do
  "Whattup"
end

get '/cat' do
  "<div style='border: 10px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
>>>>>>> a858ce063d855d0023d3b6b5137c5f88adbff884
   </div>"
end
