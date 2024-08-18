Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :show, :index, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorite, only: [:create, :destroy]
  end
  # resources :meshiterro
  devise_for :users
  root to: "homes#top"
  get '/homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
