Rails.application.routes.draw do
  get 'musics/index'
  devise_for :users
end
