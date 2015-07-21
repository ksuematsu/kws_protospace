Rails.application.routes.draw do
  devise_for :users
  # , :controllers => {registrations: "registrations"}

  root 'top#index'

  resources :users, only: [:index, :edit, :update]

  resources :prototypes, only: [:index, :new, :create]

end
