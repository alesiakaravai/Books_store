Rails.application.routes.draw do
  resources :subscriptions
  resources :books_genres
  resources :authors_books
  resources :authors
  resources :subscribers
  resources :books
  resources :genres
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
