WeaponShop::Application.routes.draw do


  resources :raitings

  resources :viewscounts

  get 'admin' => 'admin#index'
  controller :sessions do 
    get 'login' => :new 
    post 'login' => :create 
    delete 'logout' => :destroy 
  end

  post '/setraiting/' => "raitings#update"
  
  resources :product_reitings

  resources :users

  resources :line_items

  resources :carts

  get "static_pages/bow"
  get "static_pages/crossbow"
  get "static_pages/cart"
  get "static_pages/registration"
  get "static_pages/signin"
  get "static_pages/getxml"
  get "static_pages/crossbows"
  get "static_pages/bows"
  get "static_pages/home"
  resources :bowtypes

  resources :bows

  resources :crossbowtypes

  resources :crossbows

  #root :to => 'static_pages#home', :as 'main'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
