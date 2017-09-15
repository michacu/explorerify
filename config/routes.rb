Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'

  get 'index/index'

  root 'index#index'

  resources :users
end
