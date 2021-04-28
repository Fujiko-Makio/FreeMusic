Rails.application.routes.draw do
  get 'musics/index'
  devise_for :users
  root to: 'musics#index'
  #resources :musics do only: [:index]
end
