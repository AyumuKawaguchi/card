Rails.application.routes.draw do
  
  devise_for :users
  root 'products#index'
  # get 'points' => 'points#index'
  resources :points

end
