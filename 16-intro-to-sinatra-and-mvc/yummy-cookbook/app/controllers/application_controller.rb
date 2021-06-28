require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :homepage
  end

  get '/users' do
    @users = User.all
    @monkey = '🐵'
    erb :users
  end


  get '/users/:id' do
    "Hello World"
  end

  # get '/users/21' do
  #   "Hello World"
  # end

  # get '/users/50' do
  #   "Hello World"
  # end


end
