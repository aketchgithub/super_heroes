Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :heros, only: [:index, :show]

end
