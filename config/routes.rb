Rails.application.routes.draw do
   
   get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'


  get 'dashboards/index'

  devise_for :users 

  get 'welcome/index'
resources :contacts
resources :banners
 resources :categories
 root 'welcome#index'
  resources :stickers do
    collection do
    get :listing
    
  end
end

 get "/about", :to => "welcome#about"

end
