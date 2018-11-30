Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy' 
  resources :user_experiences
  resources :experiences
  resources :countries, only: [:index, :show]
  resources :regions, only: [:index, :show]
  resources :users

  post   '/login',   to: 'users#new'
  post   '/signup',   to: 'users#signup'
  get    '/myexperiences', to: 'users#myexperiences'


end
