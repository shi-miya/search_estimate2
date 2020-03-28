Rails.application.routes.draw do
  devise_for :users
  root "estimates#index"
 
end
