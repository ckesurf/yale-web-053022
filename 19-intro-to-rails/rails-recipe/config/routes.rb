Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # route, to: controller#method, as: "path_helper_name"
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show", as: "user"
  

end
