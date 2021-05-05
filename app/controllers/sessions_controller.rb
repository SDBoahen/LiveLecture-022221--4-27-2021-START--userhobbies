class SessionsController < ApplicationController




    # TERMINAL COMMANDS
    #
    #    rails g controller sessions new login create destroy
    ##   OR  (preference 🤷🏾‍♂️) 
    #    rails g controller sessions new create login destroy
    #
    ################








  # "Form Getterz"
  def new             #  REMEMBER  :  NOT TAKING IN AN OBJECT
      #  render :new
  end
  def create

    @user = User.find_by(username: params[:username])

    binding.pry

    if  @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          binding.pry  #  Final Check!! 👀
        redirect_to user_path(@user)
    else
        redirect_to login_path        #  redirect_to login_path
    end

  end
  #  (.authenticate) - Apparently ActiveRecord method? : Bycrpt allows us to use it








  # "Form Getterz"
  def login
      #  render :login
  end
  def destroy

      session.clear

      redirect_to login_path
      # redirect_to 'login'    

  end







# -------WHERE THE SIDEWALK ENDS 🚨🚨
end
