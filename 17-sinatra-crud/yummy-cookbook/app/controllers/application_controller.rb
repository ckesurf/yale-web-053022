require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
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

  # edit route
  get '/users/:id/edit' do
    # binding.pry

    @user = User.find(params[:id])
    erb :edit 
  end

  # update route
  put '/users/:id' do
    params[:user][:coffee_lover] = params[:user][:coffee_lover]? true:false
    params[:user][:vegan] = params[:user][:vegan]? true:false

    @user = User.find(params[:id])
    @user.update(params[:user])

    # respond
    redirect "/users/#{@user.id}"
  end
  


  delete '/users/:id' do
    @user = User.find(params[:id])
    @user.destroy

    redirect '/users'
  end
  
  
  # get '/users/21' do
  #   "Hello World"
  # end

  # get '/users/50' do
  #   "Hello World"
  # end


end
