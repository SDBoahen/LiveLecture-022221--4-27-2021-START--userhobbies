class UserHobbiesController < ApplicationController


    def index
        @user_hobbies = UserHobby.all
    end
    def show
        # binding.pry

        @user_hobby = UserHobby.find_by_id(params[:id])
        # find_user_hobby
        #  Have Access To :  @user_hobby


        #  Putting  (user_id_on_user_hobby) in Params!
        params[:user_id_on_user_hobby] = @user_hobby.user_id
        @user = User.find_by_id(params[:user_id_on_user_hobby])


        #  Putting  (hobby_id_on_user_hobby) in Params!
        params[:hobby_id_on_user_hobby] = @user_hobby.hobby_id
        @hobby = Hobby.find_by_id(params[:hobby_id_on_user_hobby])
        
        binding.pry

    end 


    def new
        @user_hobby = UserHobby.new
    end
    def create

        @user_hobby = UserHobby.new(user_hobby_params)
        
            binding.pry

        # Can Only Save If Valid
        if @user_hobby.save
                binding.pry  #  Final Check!! 👀
            redirect_to user_hobby_path(@user_hobby)    #  /user/:id
        else
            render :new
        end
    end








    private 


    def find_user_hobby
        @user_hobby = UserHobby.find_by_id(params[:id])
    end
    def user_hobby_params
        params.require(:user_hobby).permit(:utensil, 
        
            :user_id, :hobby_id    #  I forgot to add these as our permit🤦🏾‍♂️
            # ,
            # :time_spent, :enjoying
        )
    end 




# ---------- 🚧
end
