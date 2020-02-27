Rails.application.routes.draw do

  root 'article#index'
  devise_for :users

  resources :user, only: [:show] do
    resources :avatar, only: [:create,:destroy]
  end

  resources :kite, only:[:index,:show]
  resources :board, only:[:index,:show]
  resources :surfboard, only:[:index,:show]
  resources :accessory, only:[:index,:show]

  resources :article, only:[:index,:show]
  resources :portfolio, only:[:index,:show]

  namespace :admin do
    root 'admins#index'
    resources :admins
    resources :users
    resources :kite
    resources :board
    resources :surfboard
    resources :accessory
    resources :product do
      resources :picture, only: [:create,:destroy]
    end
    resources :article do
      resources :image, only: [:create, :destroy]
    end
    resources :portfolio
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
