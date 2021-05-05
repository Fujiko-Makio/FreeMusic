Rails.application.routes.draw do
  get 'products/index'
  get 'products/search'
  devise_for :users
  get 'musics/index'
  root to: 'musics#index'
  resources :musics

  resources :users, only: :show
  
end
