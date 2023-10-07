Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }

  root to: 'posts#index'
  resources :posts do
    resources :comments, only: :create
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
end
