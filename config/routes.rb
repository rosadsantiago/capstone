 Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/review" => "review#index"
      post "/review" => "review#create"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "categories#index"
  get "/categories/:id" => "categories#show"

  get "/restaurants" => "restaurants#index"
  get "/restaurants/:id" => "restaurants#show"


  get "/reservations" => "reservations#index"

  get "/signup" => "users#new"
  post "/userids" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/reviews" => "reviews#index"
  get "/reviews/:id" => "reviews#show"
  post "/reviews" => "reviews#create"



end
