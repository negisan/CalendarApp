Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  resources :users, only: [:create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root to: 'plans#index'
  resources :plans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
