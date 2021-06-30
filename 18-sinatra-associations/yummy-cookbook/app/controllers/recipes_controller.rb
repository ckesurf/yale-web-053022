class RecipesController < ApplicationController
  get "/recipes/new" do
    @users = User.all
    erb :"recipes/new"
  end

  post "/recipes" do
    recipe = Recipe.create(params[:recipe])
    redirect "/users/#{recipe.user_id}"
  end

  # show route
  get "/recipes/:id" do
    @recipe = Recipe.find(params[:id])
    erb :"recipes/show"
  end
end
