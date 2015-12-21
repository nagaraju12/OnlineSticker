Rails.application.routes.draw do
 root 'welcome#index'
 get 'dashboards/index'
 get 'welcome/index'
 get "/about", :to => "welcome#about"

 devise_for :users 

 resources :contacts
 resources :banners
 resources :orders
 get "lineitems/update"
 resources :stores
 resources :lineitems
 resources :carts do
    member do
      get :edit_lineitem
      get :update_lineitem
    end
  end

 resources :categories
 resources :stickers do
   collection do
     get :listing  
   end
 end

end
