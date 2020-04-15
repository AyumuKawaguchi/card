Rails.application.routes.draw do
  
  devise_for :users
  root 'users#index'

  resources :users do
    get :search, on: :collection
  end
  resources :points
  resources :impressions do
    collection do
    get  'day_count'
    get  'month_count' 
    end
  end

end
