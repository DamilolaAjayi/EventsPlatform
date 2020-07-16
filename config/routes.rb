Rails.application.routes.draw do
  get 'cost_tracker/create'
  resources :users, only: [:new, :create]
  resources :events
  root 'pages#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  get 'events', to: 'events#index'
  
  get'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#logout'

  get 'loggedin', to: 'sessions#loggedin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
