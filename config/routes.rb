Rails.application.routes.draw do
  root "portfolio#index"

  resources :contacts, only: [:new, :create]
end
