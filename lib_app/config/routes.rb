Rails.application.routes.draw do
root to: "users#index"

resources :users
get "/sign_in", to: "sessions#new"

end
