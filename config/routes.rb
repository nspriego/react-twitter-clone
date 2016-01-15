Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get 'profile' => 'profile#index'
  patch 'profile' => 'profile#update'

  resources :tweets
  resources :followers do |r|
    collection do 
      get 'random'
    end
  end
end
