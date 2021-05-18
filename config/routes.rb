Rails.application.routes.draw do
  devise_for :users
  get 'musics/index', to: 'musics#search'
  root to: 'musics#index'
  
  resources :musics do
    resources :orders, only: [:index, :create]
  end
  resources :users, only: [:show]
end
