Rails.application.routes.draw do

  # resources :users

    # resources :users #ONLY !! *** , except: [:index, :show]

  #INDEX  
  get '/users', to: "users#index", as:"users" 


  #NEW
  get '/users/new', to: "users#new", as:"new_user"

  #CREATE
  post '/users', to: "users#create"



  #SHOW  
  get '/users/:id', to: "users#show", as:"user"






  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
