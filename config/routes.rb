Rails.application.routes.draw do
  resources :user_experiences
  resources :experiences
  resources :countries
  resources :regions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
