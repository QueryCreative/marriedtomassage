Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogposts
  resources :newsposts
  resources :users

  root 'main_pages#home'

  get 'why_netrality' => 'about_pages#why_netrality'
  get 'leadership' => 'about_pages#leadership'
  get 'colocation' => 'about_pages#colocation'

  get 'locations' => 'location_pages#locations'
  get 'chicago' => 'location_pages#chicago'
  get 'houston' => 'location_pages#houston'
  get 'kansas_city' => 'location_pages#kansas_city'
  get 'new_york' => 'location_pages#new_york'
  get 'philadelphia' => 'location_pages#philadelphia'

  get 'customers' => 'customer_pages#customers'
  get 'ecosystems' => 'customer_pages#ecosystems'
  get 'customer_portal' => 'customer_pages#customer_portal'

  get 'news' => 'newsposts#index' #change to index of newsposts?
  get 'blog' => 'blogposts#index' #change to index of blog posts?

  get 'contact' =>  'main_pages#contact'
  
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
