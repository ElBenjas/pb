Rails.application.routes.draw do
  devise_for :admins
  # devise_for :users
  root to: "posts#index"

  resources :posts
  # resources :profiles, only: [:show, :new, :create, :edit, :update]
  resources :profiles

  get '/about', to: 'abouts#show', as: 'about'
end
