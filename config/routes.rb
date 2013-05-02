Simplifybest::Application.routes.draw do

  root :to => 'pages#home'
  match 'admin' => 'pages#admin'
  resources :featured_pictures
  resources :contacts
  resources :meters
  resources :supply_orders
  resources :service_calls
  resources :quotes

  match 'getaquote' => 'quotes#new'
  match 'meter' => 'meters#new'
  match 'supplyorder' => 'supply_orders#new'
  match 'servicecall' => 'service_calls#new'

  resources :users

  devise_for :users, :skip => [:sessions]

  as :user do
    get "/login" => "devise/sessions#new", :as => :new_user_session
    post "/login" => "devise/sessions#create", :as => :user_session
    delete "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  resources :product_pictures

  match 'types' => 'products#index'
  resources :categories, :path => 'types'

  resources :products do
    collection do
      put :featured
    end
  end
  match 'products/:slug/dup' => 'products#duplicate'


  match 'email' => 'application#send_mail'

  match 'sitemap_index' => redirect('http://assets.simplifybest.com/sitemaps/sitemap_index.xml.gz'), :as => 'sitemap_index'
  match 'sitemap' => redirect('http://assets.simplifybest.com/sitemaps/sitemap1.xml.gz'), :as => 'sitemap'
end
