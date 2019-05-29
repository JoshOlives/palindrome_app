require 'sinatra'
require 'olive_palindrome'

get '/' do
  @title = 'Home'
  erb :index
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrome Detector'
  erb :palindrome #, :layout => :layout
end

post '/check' do
  @phrase = params[:phrase]
  erb :result
end