Rails.application.routes.draw do
   get 'dashboards/index'

  devise_for :users 

  get 'welcome/index'
resources :contacts
resources :banners
resources :orders
resources :stores
resources :lineitems
  resources :carts  do
    member do
      get :edit_lineitem
      put :update_lineitem
    end
    collection do
      delete :empty_carts
  	  get :cart_details
  	end
  end
 resources :categories
 root 'welcome#index'
  resources :stickers do
    collection do
    get :listing
    
  end
end

 get "/about", :to => "welcome#about"
end
