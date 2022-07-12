Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  resources :items
  get "users",to: "users#index",as: :user_home
  patch "/user/monthly",to: "users#update"
end
