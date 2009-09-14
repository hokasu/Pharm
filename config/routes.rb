ActionController::Routing::Routes.draw do |map|
  map.resources :products, :has_many => :agents
  map.resources :products, :has_many => :doses
  map.resources :products, :has_many => :policies
  map.resources :policies, :has_many => :products
  map.resources :agents, :has_many => :products

  map.resources :prescriptions
  map.resources :discharges

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"


  map.root :controller => "user_sessions", :action => "new"
  map.resources :user_sessions
  map.resources :users

  map.resources :pharmacists, :has_many => :wards
  map.resources :dispensaries

  map.resources :wards, :has_many => :patients

  map.resources :patients, :has_many => :admissions
  map.resources :patients, :has_many => :prescriptions
  map.resources :patients, :has_many => :products
 map.resources :admissions, :has_many => :admnotes, :has_one => :bed
 map.resources :admnotes


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
#sets up the routes for index, create, update and destroy actions of admnotes controller
 #so /admnotes, /admnotes/new, POST /admnotes/:id, PUT /admnotes/:id, and DELETE /admnotes/:id
# map.admit 'patients/:patient_id/admit', :controller => 'admissions', :action => 'admit'

 #
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
end
