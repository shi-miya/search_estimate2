Rails.application.routes.draw do
  devise_for :users
  root "estimates#index"
  resources :estimates, only: :new
end
