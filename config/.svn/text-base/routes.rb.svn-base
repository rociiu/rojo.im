ActionController::Routing::Routes.draw do |map|
  #map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  #map.login '/login', :controller => 'sessions', :action => 'new'
  #map.register '/register', :controller => 'users', :action => 'create'
  #map.signup '/signup', :controller => 'users', :action => 'new'

  #map.resources :users

  map.resources :posts, :member => { :comment => :post }

  #map.resource :session

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

  map.namespace :admin do |admin|
    admin.root :controller => 'admin', :action => 'index'
    admin.login '/login', :controller => 'admin', :action => 'login'
    admin.login '/logout', :controller => 'admin', :action => 'logout'
    admin.resources :posts
    admin.resources :categories
    admin.resources :contacts
  end
  
  
  map.portfolio '/portfolio', :controller => 'home', :action => 'portfolio'
  map.about '/about', :controller => 'home', :action => 'about'
  map.about '/contact', :controller => 'home', :action => 'contact'
  map.about '/projects', :controller => 'home', :action => 'projects'

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "home"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
