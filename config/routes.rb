Rails.application.routes.draw do
  devise_for :admins
  resources :posts do
  	resources :comments
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, :only => [:show]
  get 'index/index'
  get 'about/show'
  resources 'contacts', only: [:new, :create]
  root 'index#index'
end
