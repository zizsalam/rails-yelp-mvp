Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "your_controller#your_action"
  get "/index", to: "your_controller#your_action"
  get "/restaurant/news", to: "restaurants#new"
  post "/restaurants", to: "restaurants#create"
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant
  get "/restaurants/:id/reviews/new", to: "reviews#new", as: :new_review
  post "/restaurants/:id/reviews", to: "reviews#create", as: :restaurant_reviews

end
