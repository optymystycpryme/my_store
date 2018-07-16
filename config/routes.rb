Rails.application.routes.draw do
 
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  root 'storefront#all_products'

  get 'categories' => 'storefront#by_category'

  get 'brands' => 'storefront#by_brand'

  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
