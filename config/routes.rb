Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    resources :trips do 
      resources :bookings, only: [:new, :create] do
      end
    end
    resources :bookings, only: [:index, :show, :update, :edit, :destroy] do
      resources :reviews, only: [:create]
    end
  
end

