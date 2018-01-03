Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/signup',  to: 'users#new', as: 'signup'

  resources :users
  resources :goals
  resources :events
  resources :habits, only: [:show, :new, :create]

end
