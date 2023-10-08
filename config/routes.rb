Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'events#index'

  resources :events

  post 'events/:id/book', to: 'events#book', as: 'book_event'
end
