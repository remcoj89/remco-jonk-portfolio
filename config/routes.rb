Rails.application.routes.draw do
  root "portfolio#index"

  resources :contact, only: [:create]
end
