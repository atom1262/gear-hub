Rails.application.routes.draw do
  root 'artists#index'

  resources :artists, only: [:new, :create, :show]

  resources :guitars, only: [:new, :create, :show]
  resources :amps, only: [:new, :create, :show]
  resources :effects, only: [:new, :create, :show]

end
