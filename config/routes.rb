Rails.application.routes.draw do
  devise_for :stores
  root to: "informations#index"
  resources :stores, only: [:edit, :update]
  resources :informations
end
