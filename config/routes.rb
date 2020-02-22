Rails.application.routes.draw do

  root 'article#index'
  devise_for :users

  resources :user, only:[:show]

  resources :kite

  resources :article

  namespace :admin do
    root 'admins#index'
    resources :admins
    resources :users
    resources :kite
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
