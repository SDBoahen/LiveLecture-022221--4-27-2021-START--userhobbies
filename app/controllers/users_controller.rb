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
        # binding.pry

            3.times { @user.outfits.build }
            # @user.outfits.build
            
        #render :
    end
    def create

        @user = User.new(user_params)
        binding.pry

        # Can Only Save If Valid
        if @user.save
            session[:user_id] = @user.id
                binding.pry  #  Final Check!! 👀
            redirect_to user_path(@user)    #  /user/:id
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
        params.require(:user).permit(:name, :username, :password,

            outfits_attributes: [:name, :heat, :price, :times_worn]

        )
        #WHO??                  WHAT??
    end




end
