Rails.application.routes.draw do
  resources :babas
  devise_for :users
  root 'babas#index'
end
