require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :homepage
  end


  # index route
  get '/users' do
    @users = User.all
    @monkey = '🐵'
    erb :index
  end

   # new route
  get '/users/new' do
    erb :new
  end

  # create route
  post '/users' do
    params[:user][:coffee_lover] = params[:coffee_lover]? true:false
    params[:user][:vegan] = params[:vegan]? true:false

    # @user = User.create(name: params[:name_field], email: params[:email_field], age: params[:age_field], gender: params[:gender_field], food_restrictions: params[:food_restrictions_field], coffee_lover: is_coffee_lover, vegan: is_vegan)
    @user = User.create(params[:user])
    
    redirect "/users/#{@user.id}"
  end
  
  # show route
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end
  
  
  # get '/users/21' do
  #   "Hello World"
  # end

  # get '/users/50' do
  #   "Hello World"
  # end


end
