class UsersController < ApplicationController


    def index
        @users = User.all
    end
    def show
        @user = User.find_by_id(params[:id])
    end


    # "Form Getterz"
    def new
        @user = User.new
    end
    def create
        binding.pry
    end 
    # "Validatorzzzz"

    
    # "Form Getterz"
    def edit
    end
    def update
    end 
    # "Validatorzzzz"



end
