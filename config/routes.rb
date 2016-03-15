Rails.application.routes.draw do
  root 'farms#index'
  devise_for :admins
  resources :farms, only: [:show, :index, :edit, :update]
end
