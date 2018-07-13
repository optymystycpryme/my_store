Rails.application.routes.draw do
  root 'storefront#all_products'
  get 'storefront/by_category'
  get 'storefront/by_brand'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
