class Beer < ApplicationRecord
    has_many :user_beers
    has_many :user, through: :user_beers
end
