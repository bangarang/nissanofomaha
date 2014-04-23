Vauto::Application.routes.draw do
  resources :parts_orders

  resources :credit_applications

  resources :test_rides

  resources :imports

  resources :categories

  resources :packages

  resources :interiors

  resources :exteriors

  resources :photos

  resources :new_vehicles, path: 'new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  # Example of regular route:
  get 'items' => 'pages#the_inventory'
  get 'home' => 'pages#home'
  get 'privacy' => 'pages#privacy'

  get 'inventory' => 'pages#full_inventory'
  get 'newvehicle' => 'pages#newvehicle'
  get 'joinourteam' => 'pages#joinourteam'
  get 'medialounge' => 'pages#medialounge'
  get 'usedvehicle' => 'pages#usedvehicle'

  get 'getservice' => 'pages#schedule_service'
  get 'service' => 'pages#service'

  get 'facility' => 'pages#facility'
  get 'philosophy' => 'pages#philosophy'

  # get 'getapproved' => 'pages#getapproved'
  get 'getapproved' => 'credit_applications#new'

  get "index.asp" => 'pages#thanks'

  get 'scheduleajoyride' => 'test_rides#new'

  get 'partsorder' => 'parts_orders#new'

  resources :vehicles, path: 'used'

  post 'import_latest' => 'imports#import_latest'

  post 'import_ftp' => 'imports#import_ftp'

  get 'restore' => 'imports#restore'

  # resources :vehicles do
  #   collection { post :import }
  # end

  get 'usedvehicles' => 'vehicles#index'

  get "chat" => 'pages#test'

  get 'login' => 'clearance/sessions#new'


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
