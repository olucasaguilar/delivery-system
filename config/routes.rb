Rails.application.routes.draw do
  root  to: 'home#index'
  resources :shipping_companies, only: [:index, :show]
end
