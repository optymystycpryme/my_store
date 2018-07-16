Rails.application.routes.draw do
 
  get 'cart/add_to_cart'
  get 'cart/view_order'
  get 'cart/checkout'
  root 'storefront#all_products'

  get 'categories' => 'storefront#by_category'
  get 'brands' => 'storefront#by_brand'

  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
