Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, pnly: [:edit, :update]
  resources :rooms, only: [:new, :create]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end