Rails.application.routes.draw do
  resources :players
  resources :games
  resources :dungeon_levels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
