Rails.application.routes.draw do
  devise_for :users
  get 'musics/index', to: 'musics#search'
  root to: 'musics#index'
  
  resources :musics
  resources :users, only: [:show]
end
