Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :destroy]
  resources :tweets, only: [:index, :create, :destroy]
  resources :likes, only: [:create, :destroy]
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'tweets#index'
end
