Rails.application.routes.draw do
  #ユーザー関連のルーティング
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  namespace :users do
    resources :reservations 
    resources :receipts, only: [:index, :edit, :update, :show]
  end
  resources :users, only: [:show]
  
  #お店関連のルーティング
  devise_for :stores, controllers: {
  sessions:      'stores/sessions',
  passwords:     'stores/passwords',
  registrations: 'stores/registrations'
  }
  root to: "informations#index"
  resources :stores, only: [:edit, :update, :show]

  #インフォメーション関連のルーティング
  namespace :informations do
    resources :reservations do
      resources :receipts, only: [:new, :create, :edit, :update, :destroy]
    end
  end
  resources :informations  do
    #Ajaxで動くアクションのルートを作成
    collection do#newの時に動くルート
      get 'get_place_children', defaults: { format: 'json' }
      get 'get_genre_children', defaults: { format: 'json' }
      get 'search'
    end
    member do#editの時に動くルート
      get 'get_place_children', defaults: { format: 'json' }
      get 'get_genre_children', defaults: { format: 'json' }
    end
  end

  #ツイートのルーティング
  resources :tweets
end
