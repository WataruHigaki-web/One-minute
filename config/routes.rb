Rails.application.routes.draw do
  resources :daybooks
  root 'daybooks#home'
  get '/help' => 'daybooks#help'
  get '/signup' => 'users#new'
  post '/signup',to: 'users#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
