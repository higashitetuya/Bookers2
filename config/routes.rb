Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'home/about'
  resources :users, only: [:update, :index, :create, :edit, :show,]
  resources :books
end
