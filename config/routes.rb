Rails.application.routes.draw do
  resources :quotes
  get 'page/form'
  get 'page/about'
  get 'page/products'
  get 'page/services'


  resources :contacts
  devise_for :users

  get 'home/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
