Rails.application.routes.draw do
 resources :babas
 root 'babas#index'
end
