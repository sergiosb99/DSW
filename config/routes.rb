Rails.application.routes.draw do

  get 'users/new'
  get 'users/create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'authorized', to: 'sessions#pages_requires_login'
  
  root 'sessions#new'
  
  resources :posts
  resources :collects
  get "/about", to: "posts#about"
  resources :users
  
end