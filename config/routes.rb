Rails.application.routes.draw do 
  resources :likes
  resources :user_experiences
  resources :experiences
  resources :countries, only: [:index, :show]
  resources :regions, only: [:index, :show]
  resources :users

  post   '/login',   to: 'users#new'
  post   '/signup',   to: 'users#new'
  # get    '/myexperiences', to: 'users#myexperiences'


end
