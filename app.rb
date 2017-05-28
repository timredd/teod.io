require 'sinatra'

get '/' do
  haml :oops
end

get '/:place' do
  haml params[:place].to_sym
end

get '/world' do
  haml :world
end

get '/essays' do
  haml :essays
end

get '/about' do
  haml :about
end
