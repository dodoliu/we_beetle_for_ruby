Rails.application.routes.draw do

  devise_for :admins #指定权限验证使用的对象为admin

  root 'frontent/beetle#index'

  get 'beetle/index', to: 'frontent/beetle#index'
  get 'beetle/secondview', to: 'frontent/beetle#secondview'
  get 'beetle/stylist', to: 'frontent/beetle#stylist'
  get 'beetle/classcontent', to: 'frontent/beetle#classcontent'
  get 'beetle/secondshow', to: 'frontent/beetle#secondshow'
  get 'beetle/subscribe', to: 'frontent/beetle#subscribe'
  get 'beetle/subscribe_create', to: 'frontent/beetle#subscribe_create'

  namespace :backend do
    root 'main_classes#index'
    resources :admins
    resources :main_classes, :sub_classes, :sub_class_details
    get 'subscribes', to: 'subscribes#index'
    get 'subscribes/edit_status/:id', to: 'subscribes#edit_status'
  end
  
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
