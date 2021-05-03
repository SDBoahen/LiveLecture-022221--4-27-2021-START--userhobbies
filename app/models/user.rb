class User < ApplicationRecord
    has_many :outfits

    accepts_nested_attributes_for :outfits
    
end
