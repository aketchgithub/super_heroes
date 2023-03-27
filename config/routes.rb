Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :heros, only: [:index, :show]
  resources :hero_powers, only: [:create]

end
