Rails.application.routes.draw do

  root 'article#index'
  devise_for :users

  resources :user, only: [:show] do
    resources :avatar, only: [:create,:destroy]
  end

  resources :kite, only:[:index,:show]
  resources :board, only:[:index,:show]
  resources :surfboard, only:[:index,:show]

  resources :article, only:[:index,:show]

  namespace :admin do
    root 'admins#index'
    resources :admins
    resources :users
    resources :kite
    resources :product do
      resources :picture, only: [:create,:destroy]
    end
    resources :article
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
