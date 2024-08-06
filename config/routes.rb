Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get "home/about"

  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end
  #root "home#index"
  #
  root to: "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.


  # Defines the root path route ("/")
  # root "posts#index"
end
