Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  get 'index/index'

  root 'index#index'
end
