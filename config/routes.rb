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




  #EDIT
  get '/users/:id/edit', to: "users#edit", as:"edit_user"

  #UPDATE  ~  PATCH
  patch '/users/:id', to: "users#update"




  #DELETE
  delete '/users/:id', to: "users#destroy"



 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
