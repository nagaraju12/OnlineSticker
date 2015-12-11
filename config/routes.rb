Rails.application.routes.draw do
 root 'welcome#index'
 get 'dashboards/index'
 get 'welcome/index'
 get "/about", :to => "welcome#about"

 devise_for :users 

 resources :contacts
 resources :banners
 resources :orders

 resources :stores
 resources :lineitems
 resources :carts
 resources :categories
 resources :stickers do
   collection do
     get :listing  
   end
 end

end
