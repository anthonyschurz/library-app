Rails.application.routes.draw do
root to: "users#index"

# USERS
resources :users

# SESSIONS
get "/sign_in", to: "sessions#new"
post "/sessions", to: "sessions#create"

# LIBRARIES
resources :libraries

# LIBRARY-USERS
get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"
post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"


end
