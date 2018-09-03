Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :items do
    resources :bookings, only: [:new, :create, :show, :destroy]
    resources :reviews, only: [:new, :create, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :orders, only: [:show, :create]
end
