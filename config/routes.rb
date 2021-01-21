Rails.application.routes.draw do
  devise_for :stores
  get 'informations/index'
  root to: "informations#index"
end
