Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/items', to: 'items#index', as: "items"
  # get '/items/new', to: 'items#new', as: "new_item"
  # get '/items/:id', to: 'items#show', as: "item"
  # get '/items/:id/edit', to: 'items#edit', as: "edit_item"
  resources :items
  resources :lists
  resources :users, only: [:new, :create]
  # get '/signup', to: "users#new", as: "signup"
  # post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
 
end

