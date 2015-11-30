Rails.application.routes.draw do
   get 'dashboards/index'

  devise_for :users 

  get 'welcome/index'
resources :contacts
resources :banners
resources :lineitems
resources :cart
 resources :categories
 root 'welcome#index'
  resources :stickers do
    collection do
    get :listing
    
  end
end

 get "/about", :to => "welcome#about"

end
