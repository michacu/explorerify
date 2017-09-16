Rails.application.routes.draw do
  devise_for :users
  get 'index/index'

  root 'index#index'
end
