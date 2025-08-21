Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :lists, only: [:index, :show, :new, :create] do
    # resources :bookmarks, only: [:new, :create]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  post "lists/create", to: "lists#create"
  get "lists/:id", to: "lists#show", as: :list

  # ----------------------------------------------------

  get "lists/:id/bookmarks/new", to: "bookmarks#new"
  post "lists/:id/bookmarks", to: "bookmarks#create", as: :bookmarks



  # Defines the root path route ("/")
  # root "posts#index"
end
