class UsersController < ApplicationController


    before_action :find_user, only: [:show, :edit, :update, :destroy]




    def index
        @users = User.all
    end
    def show
    end




    # "Form Getterz"
    def new
        @user = User.new
    end
    def create
        binding.pry
        @user = User.new(user_params)
        if @user.save
            binding.pry
            redirect_to user_path(@user)
        else
            render :new
        end

    end 
    # "Validatorzzzz"


    

    # "Form Getterz"
    def edit
    end
    def update
        # binding.pry
        @user.update(user_params)
        # binding.pry
        redirect_to user_path(@user)
            #YOU CAN ALSO DO THIS: redirect_to @user 
    end 
    # "Validatorzzzz"




    def destroy
        binding.pry
        @user.destroy
        redirect_to users_path
    end




    private 


    def find_user
        @user = User.find_by_id(params[:id])
    end


    def user_params
        params.require(:user).permit(:name, :username)
        #WHO??                  WHAT??
    end




end
