Rails.application.routes.draw do
  root 'farms#index'
  devise_for :admins
  resources :farms
  resources :positions, except: :show
  resources :users, only: :show
end
