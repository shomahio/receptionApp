Rails.application.routes.draw do
  devise_for :stores
  root to: "informations#index"
  resources :stores, only: [:edit, :update]
  resources :informations do
    get 'get_place_children', defaults: { format: 'json' }
    get 'get_genre_children', defaults: { format: 'json' }
  end
end
