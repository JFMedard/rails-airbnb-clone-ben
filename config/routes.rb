Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lamas do
    resources :bookings, only: [:new, :create, :destroy]
  end
  resources :users do
    resources :bookings, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
