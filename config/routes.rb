Simplifybest::Application.routes.draw do
  resources :meters
  resources :supply_orders
  resources :service_calls
  resources :messages

  resources :users

  devise_for :users, :skip => [:sessions]

  as :user do
    get "/login" => "devise/sessions#new", :as => :new_user_session
    post "/login" => "devise/sessions#create", :as => :user_session
    delete "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  resources :product_pictures

  resources :categories

  resources :products

  match 'products/:slug/dup' => 'products#duplicate'

  root :to => 'pages#home'

  match 'about' => 'pages#about'
  match 'styles' => 'pages#styles'
  match 'icons' => 'pages#icons'
  match 'email' => 'application#send_mail'

  # Color MFPs

  match 'taskalfa3050ci' => 'pages#taskalfa3050ci'
  match 'taskalfa3550ci' => 'pages#taskalfa3550ci'
  match 'taskalfa4550ci' => 'pages#taskalfa4550ci'
  match 'taskalfa5550ci' => 'pages#taskalfa5550ci'
  match 'taskalfa6550ci' => 'pages#taskalfa6550ci'
  match 'taskalfa7550ci' => 'pages#taskalfa7550ci'


  # BW MFPs
  match 'taskalfa3500i' => 'pages#taskalfa3500i'
  match 'taskalfa4500i' => 'pages#taskalfa4500i'
  match 'taskalfa5500i' => 'pages#taskalfa5500i'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
