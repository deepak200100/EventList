Rails.application.routes.draw do
  resources :clubs
  resources :users
  root "home#index"
  
end
