Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lamas do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create, :destroy, :index, :show]
  end
  resources :users do
    resources :bookings, only: [:index, :show, :destroy, :edit, :update]
    resources :lamas, only: [:index, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
