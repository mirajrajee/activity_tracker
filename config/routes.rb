Rails.application.routes.draw do
  resources :dashboard, only: [:index]

  devise_for :users, controllers: { registrations: "registrations"}
  root 'home#index'

end
