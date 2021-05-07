class User < ApplicationRecord
    has_secure_password



    has_many :pets

    has_many :outfits

    has_many :user_hobbies
    has_many :hobbies, through: :user_hobbies






    accepts_nested_attributes_for :outfits




    validates :username, presence: true, uniqueness: true 


    

end
