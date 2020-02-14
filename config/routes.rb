Rails.application.routes.draw do
  get 'sessions/new'
  resources :daybooks
  root 'daybooks#home'
  get '/help' => 'daybooks#help'
  get '/signup' => 'users#new'
  post '/signup',to: 'users#create'
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
