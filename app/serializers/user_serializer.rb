class UserSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
  
    attributes :id, :name, :email, :password, :age
    has_many :user_beers
    has_many :beers, through: :user_beers
    has_many :user_games
    
  
end