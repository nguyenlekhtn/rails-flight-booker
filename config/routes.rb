Rails.application.routes.draw do
  get "errors/not_found"
  get "errors/internal_server_error"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "flights#index"

  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show]

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
