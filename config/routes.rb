Rails.application.routes.draw do
  root 'farms#index'
  devise_for :admins
  resources :farms
  resources :users, only: :show
end
