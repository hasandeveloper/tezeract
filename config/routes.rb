Rails.application.routes.draw do
  resources :cloud_providers
  resources :aws_subnets
  resources :aws_opted_availability_zones
  resources :aws_availability_zones
  resources :aws_regions
  resources :aws_data_centers
  resources :boxes
  resources :aws_vpcs
  resources :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
