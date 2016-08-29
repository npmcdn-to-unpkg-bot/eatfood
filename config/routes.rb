Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :restaurants do 
    resources :reviews, except: [:index, :show]
    collection do
      get 'search'
    end
  end
  root 'restaurants#index'
  match '/about_us', to: 'pages#about_us',        via: :get
  match '/contact_us', to: 'pages#contact_us',    via: :get
  match '/italian' ,to: 'pages#italian',          via: :get
  match '/korean' ,to: 'pages#korean',            via: :get
  match '/chinese' ,to: 'pages#chinese',          via: :get
  match '/japanese' ,to: 'pages#japanese',        via: :get
  match '/french' ,to: 'pages#french',            via: :get
  match '/american', to: 'pages#american',        via: :get
  match '/mexican', to: 'pages#mexican',          via: :get
  match '/indian' ,to: 'pages#indian',            via: :get
  match '/thai' ,to: 'pages#thai',                via: :get
  match '/vietnam' ,to: 'pages#vietnam',          via: :get
  match '/greek' ,to: 'pages#greek',              via: :get
  match '/fusion' ,to: 'pages#fusion',            via: :get
  
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