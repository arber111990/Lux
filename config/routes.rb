Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :items do
    resources :bookings, only: [:new, :create, :show, :destroy] do
      resources :payments, only: [:new, :create]
    end
    resources :reviews, only: [:new, :create, :show, :destroy]
  end

  get '/settings', to: 'users#edit'
end
