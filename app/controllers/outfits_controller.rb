class OutfitsController < ApplicationController


  before_action :find_outfit, only: [:show, :edit, :update, :destroy]


  def index

    if params[:user_id]  # Is it Nested? ORRRRNAH? / Is there a User??
       find_user

        # binding.pry

       @outfits = @user.outfits
       # Outfit JUST For that User  :) 
       ##    FOR NESTED ROUTES

     else
       @outfits = Outfit.all
      # For All General Outfits 
      ##    FOR NON-NESTED ROUTES
    end

  end
  def show

      # @outfit : Through our before_action -- YAY!

      if params[:user_id] 
         find_user
      end
      # @user

  end


  def new

      if params[:user_id]  # Making a New Outfit Associated with a User
         find_user
         @outfit = @user.outfits.build
      else  # JUST making a new Outfit
         @outfit = Outfit.new 
      end

  end
  def create
      # binding.pry




      ##  CREATE PORTION

      if params[:user_id]
          find_user
          @outfit = @user.outfits.build(outfit_with_user_params)    #build out an outfit ;D
      else
          @outfit = Outfit.new(outfit_params)
      end




        binding.pry




      ##  REDIRECT PORTION  

      if @outfit.save
         

              if @user
                  redirect_to user_outfit_path(@user, @outfit)
              else
                  redirect_to @outfit    #little shortcut ;)
                    # outfit_path(@outfit) 
              end


       else


          render :new


      end




  end








  def edit
  end
  def update
  end


  def destroy
  end


end




private 


  def find_outfit
      @outfit = Outfit.find_by_id(params[:id])
  end
     def outfit_params
         params.require(:outfit).permit(:name, :heat, :price, :times_worn)
     end 


  def find_user
      @user = User.find_by_id(params[:user_id])
  end
     def outfit_with_user_params
         params.require(:outfit).permit(:name, :heat, :price, :times_worn, :user_id)
     end 

