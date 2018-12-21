  Rails.application.routes.draw do
    devise_for :users

    resources :users
    resources :products do
    resources :comments
  end # Makes comments resources are a subset of products.

    get 'simple_pages/about'
    get 'simple_pages/contact'
    get 'simple_pages/index'
    get 'simple_pages/landing_page'
    get 'products/index'
    get 'products/new'
    get 'products/edit'
    get 'products/show'
    get 'orders/index'
    get 'orders/show'
    post 'simple_pages/thank_you'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    root 'simple_pages#landing_page'

      resources :orders, only: [:index, :show, :create, :destroy]
  end
