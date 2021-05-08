Rails.application.routes.draw do
  devise_for :users
  root to: 'musics#index'
  get 'musics/index', to: 'musics#search'
  resources :musics
  resources :users, only: :show
end
