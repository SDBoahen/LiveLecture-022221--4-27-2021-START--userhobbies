class HobbiesController < ApplicationController


    def index
        @hobbies = Hobby.all
    end
    def show
        @hobby = hobby.find_by_id(params[:id])
    end 


end
