Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    member do
      get 'apply', to: 'posts#apply'
      post 'confirm', to: 'posts#confirm'
      get 'confirm', to: 'posts#confirm'
      get 'purchase', to: 'posts#purchase'
    end
  end
  resources :users, only: [:edit, :update, :show]
  resources :cards, only: [:new, :create, :edit, :update, :show]
end