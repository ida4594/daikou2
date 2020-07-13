Rails.application.routes.draw do
  root to: 'companies#index'
  
  resources :companies
  resources :shops
  resources :sales do
    collection { post :import }
  end
end