Rails.application.routes.draw do
  
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'users#index'

  resources :users do
   
    get :search, on: :collection
  end
  resources :user_points do
    collection do
    get 'day_point'
    get 'month_point'
    end
  end
  resources :impressions do
    collection do
    get  'day_count'
    get  'month_count' 
    end
  end
end
