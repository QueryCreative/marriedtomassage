Rails.application.routes.draw do

  get 'sitemap/index'

  get 'posts/index'

  get 'posts/show'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :announcements
  resources :testimonials
  resources :newsposts
  resources :users

  root 'main_pages#home'

  get 'about' => 'main_pages#about'
  get 'yleo' => 'main_pages#yleo'
  get 'guestbook' => 'main_pages#guestbook'
  get 'therapists' => 'main_pages#therapists'

  get 'services' => 'main_pages#services'
  get 'service-area' => 'main_pages#service-area'
  get 'sacramento' => 'main_pages#sacramento'
  #get 'specials' => 'main_pages#specials'
  get 'giftcertificates' => 'main_pages#giftcertificates'

  get 'tmj' => 'main_pages#tmj'
  get 'sciatica' => 'main_pages#sciatica'
  get 'benefits' => 'main_pages#benefits'
  get 'deeptissue' => 'main_pages#deeptissue'
  get 'chair-massage' => 'main_pages#chair-massage'
  get 'frozen-shoulder' => 'main_pages#frozen-shoulder'
  get 'plantar-fasciitis' => 'main_pages#plantar-fasciitis'
  get 'elbow' => 'main_pages#elbow'
  get 'carpal-tunnel' => 'main_pages#carpal-tunnel'

  get 'privacy-policy' => 'main_pages#privacy-policy'
  get 'schedule' => 'main_pages#schedule'
  get 'venue' => 'main_pages#venue'
  get 'reservation' => 'main_pages#reservation'

  get 'announcements' => 'announcements#index'
  get 'testimonials' => 'testimonials#index'
  get 'specials' => 'specials#index'

  get 'news' => 'newsposts#index'

  get 'contact' =>  'main_pages#contact'

  get "reserve" => redirect("https://www.massagebook.com/Sacramento~Massage~IMA")
  # get "/reserve" => redirect("https://www.massagebook.com/Sacramento~Massage~IMA")
  get "certificate" => redirect("https://www.massagebook.com/Sacramento~Massage~IndependentMassageAlliance?src=external#gift-certificates")


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
    # namespace :sitemap do
    #   Directs /admin/products/* to Admin::ProductsController
    #   (app/controllers/admin/products_controller.rb)
    #   resources :products
    # end

end
