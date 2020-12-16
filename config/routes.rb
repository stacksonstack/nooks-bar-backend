Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :beers
      resources :user_games
      resources :user_beers, except: :destroy
      resources :villagers
      delete 'users/:user_id/user_beers/:beer_id', :to => 'user_beers#destroy'
    end
  end
end
