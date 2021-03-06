RentCollegeBooks::Application.routes.draw do
  #devise_for :users

  devise_for :users do
    root :to => "devise/registrations#new"
    get "/" => "devise/registrations#new"
    post '/' => 'registrations#new', :as => :new_user_registration
    match '/', :to => 'devise/registrations#new'
    get "/edit" => "devise/registrations#edit"
    match '/edit', :to => 'devise/registrations#edit'
    get "/login" => "devise/sessions#new"
    match '/login', :to => 'devise/sessions#new'
    get "/logout" => "devise/sessions#destroy"
    match '/logout', :to => 'devise/sessions#destroy'
  end

  resources :orders

  resources :semesters

  resources :college_classes

  resources :customers

  resources :books


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'orders#index'
   get 'account' => 'orders#index'
   get 'search/:id'=> 'books#search'
   get 'search'=> 'books#search'

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
