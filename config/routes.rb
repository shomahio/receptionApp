Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  namespace :users do
    resources :reservations 
  end
  
  devise_for :stores, controllers: {
  sessions:      'stores/sessions',
  passwords:     'stores/passwords',
  registrations: 'stores/registrations'
  }
  root to: "informations#index"
  resources :stores, only: [:edit, :update]
  
  resources :informations  do
    #Ajaxで動くアクションのルートを作成
    collection do
      get 'get_place_children', defaults: { format: 'json' }
      get 'get_genre_children', defaults: { format: 'json' }
      get 'search'
    end
    
  end
  namespace :informations do
    resources :reservations
  end
  resources :tweets
end
