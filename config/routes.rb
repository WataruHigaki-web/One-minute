Rails.application.routes.draw do
  get 'users/new'
  resources :daybooks
  root 'daybooks#home'
  get '/help' => 'daybooks#help'
  get '/signup' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end