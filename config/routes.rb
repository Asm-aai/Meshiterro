Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  resources :post_images, only: [:new, :create, :show, :index, :destroy]
  get 'post_image/new'
  get 'post_image/show'
  get 'post_image/index'
  # resources :meshiterro
  devise_for :users
  root to: "homes#top"
  get '/homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
