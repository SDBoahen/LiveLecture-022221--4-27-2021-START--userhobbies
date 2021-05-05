Rails.application.routes.draw do


      # get 'sessions/new'
      # get 'sessions/login'
      # get 'sessions/create'
      # get 'sessions/destroy'


      # get 'outfits/index'
      # get 'outfits/show'
      # get 'outfits/new'
      # get 'outfits/create'
      # get 'outfits/edit'
      # get 'outfits/update'
      # get 'outfits/destroy'

        # Mess With in Lecture?




  # resources :users


    # resources :users #ONLY !! *** , except: [:index, :show]





  resources :users do

    resources :outfits

  end
  #  /users/:user_id/outfits

  resources :outfits
  #  /outfits








########   SESSIONS ROUTES


  get 'login', to: "sessions#new"

  post 'login', to: "sessions#create"

  delete 'logout', to: "sessions#destroy"


  # 🚧 #

    get 'welcome', to: "session#welcome" 

  # 🚧 #
    

######## 
# REMEBER FOLKS  ::  NO resource :sessions 







####  (USER)  WRITTEN OUT ROUTES


  # #INDEX  
  # get '/users', to: "users#index", as:"users" 


  # #NEW
  # get '/users/new', to: "users#new", as:"new_user"

  # #CREATE
  # post '/users', to: "users#create"




  # #SHOW  
  # get '/users/:id', to: "users#show", as:"user"




  # #EDIT
  # get '/users/:id/edit', to: "users#edit", as:"edit_user"

  # #UPDATE  ~  PATCH
  # patch '/users/:id', to: "users#update"




  # #DELETE
  # delete '/users/:id', to: "users#destroy"


########








####  (OUTFIT)  WRITTEN OUT ROUTES


    # get '/outfits', to: "outfits#index"
    #   # "NORMALLY" 

    # get '/users/:user_id/outfits', to: "outfits#index"
    #   # Nested 


#######


 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
