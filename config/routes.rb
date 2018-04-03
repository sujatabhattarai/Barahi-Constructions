Rails.application.routes.draw do

  root 'pages#home'
  get 'about', to:'pages#about'

  resources :employees

  resources :equipments

  get 'signup', to:'employees#sign_up'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
