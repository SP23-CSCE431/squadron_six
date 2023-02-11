Rails.application.routes.draw do
  resources :budgets
  root "main#index"

  resources :users
  get 'main', to: 'main#index'
  
end
