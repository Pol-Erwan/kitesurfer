Rails.application.routes.draw do

  root 'article#index'
  devise_for :users

  resources :user, only: [:show] do
    resources :avatar, only: [:create,:destroy]
  end

  resources :kite, only:[:index,:show,:create, :destroy]
  resources :board, only:[:index,:show, :create, :destroy]
  resources :surfboard, only:[:index,:show, :create, :destroy]
  resources :accessory, only:[:index,:show, :create, :destroy]
  resources :foil, only:[:index,:show, :create, :destroy]

  resources :article, only:[:index,:show]
  resources :portfolio, only:[:index,:show]

  namespace :admin do
    root 'admins#index'
    resources :admins
    resources :user
    resources :kite
    resources :board
    resources :surfboard
    resources :accessory
    resources :foil
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
