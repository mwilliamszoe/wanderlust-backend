Rails.application.routes.draw do
  resources :user_experiences
  resources :regions
  resources :countries
  resources :experiences
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
