Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'topics/index'

  root 'pages#index'
  get 'pages/help'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics do
  resources :comments
  end

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites' , to: 'favorites#destroy'
  
  get 'comments/index'
  get 'comments/new'
  post '/comments' , to: 'comments#create'
  
  
end