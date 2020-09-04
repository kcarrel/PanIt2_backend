Rails.application.routes.draw do
  resources :collections
  resources :items
  resources :users, only: [:create]
      post '/login', to: 'auth#create'
      post '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
