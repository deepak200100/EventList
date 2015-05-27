Rails.application.routes.draw do
  resources :clubs
  resources :users
  resources :user_sessions
  get '/logout', to: 'user_sessions#destroy', as: :logout
  root "home#index"
  
end
