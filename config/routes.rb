Rails.application.routes.draw do
  resources :companies
  resources :shops
  resources :sales do
    collection { post :import }
  end

end
