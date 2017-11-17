Rails.application.routes.draw do
  resources :posts do
  	resources :comments
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, :only => [:show]
  get 'index/index'

  root 'index#index'
end
