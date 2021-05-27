Rails.application.routes.draw do
  resources :launches
  resources :bookings
  devise_for :organisations
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/providers', to: 'pages#providers'
  get '/account', to: 'pages#account'
end
