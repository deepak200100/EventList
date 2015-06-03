Rails.application.routes.draw do
  resources :clubs
  resources :users
  resources :user_sessions
  get '/logout', to: 'user_sessions#destroy', as: :logout
  root "clubs#index"
  resources :password_resets, :only => [ :new, :create, :edit, :update ]
  
end
