Rails.application.routes.draw do
  resources :greetings
  get 'root/index'
  get 'greetings/random', to: 'greetings#random'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'root#index'
end
