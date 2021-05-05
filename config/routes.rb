Rails.application.routes.draw do
  devise_for :users
  get 'musics/index'
  get 'products/search'
  get 'products/index'
  root to: 'musics#index'
  resources :musics
  resources :users, only: :show
  
end
