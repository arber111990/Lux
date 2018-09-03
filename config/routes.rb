Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :items do
    resources :bookings, only: [:new, :create, :show, :destroy]
    resources :reviews, only: [:new, :create, :show, :destroy]
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
