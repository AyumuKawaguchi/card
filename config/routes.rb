Rails.application.routes.draw do
  
  devise_for :users
  root 'users#index'

  resources :users do
    resources :user_points
      collection do
        get 'day_point'
        get 'month_point'
      end
    get :search, on: :collection
  end
  resources :user_points

  resources :impressions do
    collection do
    get  'day_count'
    get  'month_count' 
    end
  end

  

end
