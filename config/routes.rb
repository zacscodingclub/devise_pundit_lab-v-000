Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes"
  resources :notes
  resources :users
  # You can have the root of your site routed with "root"
  root 'notes#index'
  resources :pages, only: [:about]
end
