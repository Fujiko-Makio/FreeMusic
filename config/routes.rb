Rails.application.routes.draw do
  devise_for :users
  get 'musics/index'
  root to: 'musics#index'
  resources :musics, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: :show
  root 'products#index'
  get 'products/search'
end
