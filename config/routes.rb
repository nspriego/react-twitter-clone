Rails.application.routes.draw do

  resources :tweets
  devise_for :users
  root 'home#index'

  get 'profile' => 'profile#index'
  patch 'profile' => 'profile#update'

  # resources :profile, only: [:index, :update] do
  #   get '/profile', to: 'profiles#index'
  # end
end
