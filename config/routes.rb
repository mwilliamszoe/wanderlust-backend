Rails.application.routes.draw do 
  resources :likes
  resources :experiences
  resources :countries, only: [:index, :show]
  resources :regions, only: [:index, :show]
  resources :users

  post   '/login',   to: 'users#new'
  post   '/signup',   to: 'users#new'
  # get    '/myexperiences', to: 'users#myexperiences'

  get '/users/:user_id/liked_experiences/:experience_id', to: 'users#liked_experience'

  get '/finduserfromtoken', to: 'users#finduserfromtoken'
end
