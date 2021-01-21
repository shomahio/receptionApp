Rails.application.routes.draw do
  get 'informations/index'
  root to: "informations#index"
end
