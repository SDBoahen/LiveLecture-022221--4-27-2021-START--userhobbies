class User < ApplicationRecord
    has_secure_password
    
    has_many :outfits

    accepts_nested_attributes_for :outfits
    
end
