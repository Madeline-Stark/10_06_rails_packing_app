Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/items', to: 'items#index', as: "items"
  # get '/items/new', to: 'items#new', as: "new_item"
  # get '/items/:id', to: 'items#show', as: "item"
  # get '/items/:id/edit', to: 'items#edit', as: "edit_item"
  resources :items
  resources :lists
end

