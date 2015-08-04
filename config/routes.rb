Rails.application.routes.draw do
  devise_for :users
  # , :controllers => {registrations: "registrations"}

  root 'top#index'

  resources :users, only: [:show, :edit, :update]

  resources :prototypes, only: [:new, :create]

  resources :prototypes, only: [:show] do
    resources :comments, only: [:create], module: 'prototypes'
    member do
      put 'like'    => 'prototypes#like'
      put 'dislike' => 'prototypes#dislike'
    end
  end

end
