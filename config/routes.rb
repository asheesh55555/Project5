Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "home#index"
  resources :companies
   resources :user_roles
    resources :user_regions
     resources :regions
      resources :countries
       resources :states
        resources :cities
         resources :images
          resources :places
           resources :nodes
           resources :pages
           resources :sites
end
