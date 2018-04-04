Rails.application.routes.draw do

  root 'pages#home'
  get 'about', to:'pages#about'

  resources :employees
  get 'signup', to:'employees#sign_up'

  resources :equipment

  resources :orders

  resources :customers

  resources :accounts



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
