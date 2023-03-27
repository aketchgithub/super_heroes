Rails.application.routes.draw do
  resources :powers
  resources :heros, only: [:index, :show]

end
