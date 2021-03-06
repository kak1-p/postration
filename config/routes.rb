Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: :create
  end
  resources :users, only: :show
  resources :rooms, only: [:create, :show, :index]
  resources :messages, only: :create
  resources :groups, only: [:index, :new, :create, :show] do
    resources :groupposts, only: :create
  end

end
