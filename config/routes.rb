Rails.application.routes.draw do
  
  devise_for :users
  root 'users#index'

  resources :users do
    get :search, on: :collection
  end
  resources :products
  resources :points

end
