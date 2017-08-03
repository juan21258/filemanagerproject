Rails.application.routes.draw do
  get 'sessions/new'

  get 'usuarios/new'

  get 'home/index'

  get  '/signup',  to: 'usuarios#new'
  post '/signup',  to: 'usuarios#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :archivos
  resources :usuarios
  root "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
