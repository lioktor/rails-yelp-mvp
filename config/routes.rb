Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'reviews/edit'
  # get 'reviews/update'
  # get 'reviews/show'
  # get 'reviews/destroy'
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  # get 'restaurants/show'
  # get 'restaurants/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'restaurants#home'

  # get    "restaurants/new",      to: "restaurants#new"
  # post   "restaurants",          to: "restaurants#create"

  # get    "restaurants/:id",      to: "restaurants#show"

  # get    "restaurants/:id/edit", to: "restaurants#edit"
  # patch  "restaurants/:id",      to: "restaurants#update"

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create, :show]
  end
  resources :reviews, only: [:new, :create]
end
