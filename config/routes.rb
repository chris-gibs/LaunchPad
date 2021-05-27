Rails.application.routes.draw do
  devise_for :organisations
  root to: 'home#index'
end
