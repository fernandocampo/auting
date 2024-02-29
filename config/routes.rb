Rails.application.routes.draw do


  get "/my_cars", to: "users#my_cars", as: :my_cars
  devise_for :users
  resources :cars do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create, :show]

  resources :users, only: [:show]
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
