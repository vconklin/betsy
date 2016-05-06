Rails.application.routes.draw do

  # because we need to create a session immediately upon entering the site, for guest users
  root 'sessions#create_order'

  resources :products do
    resources :reviews
  end

  resources :products
  resources :users, :only => [:new, :create, :show, :products]

  resources :sessions, :only => [:create, :destroy, :new]


  get "/users/:id/products/" => "users#product"
  get 'reviews/index'

  get    "/login", to: "sessions#new", as: :login
  delete "/logout", to: "sessions#destroy", as: :logout

  # this route is named non-restfully because an "order" has two main screens: the cart screen and the checkout screen. The url should not contain an id because it is identified by the session, not by any params passed through the url.
  get '/cart' => 'order_items#index', as: 'cart'
  # presumably there will be a similar get '/checkout' route

  # adds the item to that specific order
  post '/cart' => 'order_items#create'

  delete '/cart' => 'order_items#destroy'







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
