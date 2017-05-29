require 'sinatra'
require 'glorify'
require 'rdiscount'

set :root, File.dirname(__FILE__)

def load_post(name)
  File.open("./posts/#{name}.md", "rb").read
end

before do
  @posts = (Dir.entries('./posts') - ['.', '..']).map do |post|
    File.basename(post, '.md')
  end
end

get '/' do
  @post = load_post(@posts.first)
  haml :post
end

get '/:place' do
  @post = load_post(params[:place])
  haml :post
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
