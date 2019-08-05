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
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites' , 'favorites#desoy'
  
  get 'comments/index'
  post '/comments' , to: 'comments#create'
  
end