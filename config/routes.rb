Rails.application.routes.draw do
  resources :clubs
  resources :users
  resources :user_sessions
  get '/logout', to: 'user_sessions#destroy', as: :logout
  root "home#index"
  resources :password_resets, :only => [ :new, :create, :edit, :update ]
  namespace :home do
   get :index
   post :search
  end
  
end
