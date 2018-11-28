Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :user_experiences
  resources :experiences
  resources :countries
  resources :regions
  resources :users

  # post '/login', to: 'auth#create'
  # get '/profile', to: 'users#profile'

  # get    '/signup',  to: 'users#new'
  post   '/login',   to: 'users#new'
  post   '/signup',   to: 'users#signup'

  # delete '/logout',  to: 'sessions#destroy'  
  # get 'signup', to: 'users#new', as: 'signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
