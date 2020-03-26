Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    member do
      get 'apply', to: 'posts#apply'
      post 'confirm', to: 'posts#confirm'
      get 'confirm', to: 'posts#confirm'
    end
  end
  resources :users, only: [:edit, :update, :show]
end