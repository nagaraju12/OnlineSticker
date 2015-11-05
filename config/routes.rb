Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

resources :stickers
 resources :categories
 root 'welcome#index'
  

  
end
