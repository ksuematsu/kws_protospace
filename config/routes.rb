Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}

  root 'top#index'

  resources :users, only: [:index, :new, :edit]

  resources :proto, only: [:index, :new]

  resources :login, only: [:index]

end
