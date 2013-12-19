Capstone::Application.routes.draw do

  devise_for :users

  get "welcome/index"

  get "welcome/about"

  root to: 'welcome#index'

  resources :users, only: [:show] do
    resources :portfolios, only: [:create, :new, :show]
  end

  resources :masterpieces, only: [:new, :create]
end
