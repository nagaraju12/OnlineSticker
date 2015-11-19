Rails.application.routes.draw do
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
    get :paid
  end
end

 get "/about", :to => "welcome#about"

end
