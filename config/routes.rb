Rails.application.routes.draw do
  devise_for :users
  resources :babas
  root 'babas#index'
end
