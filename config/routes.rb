Rails.application.routes.draw do
  namespace :backend do
  get 'sub_class_details/index'
  end

  namespace :backend do
  get 'sub_class_details/new'
  end

  namespace :backend do
  get 'sub_class_details/create'
  end

  namespace :backend do
  get 'sub_class_details/show'
  end

  namespace :backend do
  get 'sub_class_details/edit'
  end

  namespace :backend do
  get 'sub_class_details/update'
  end

  namespace :backend do
  get 'sub_class_details/destroy'
  end

  devise_for :admins
  root 'backend/main_classes#index'

  namespace :backend do
    root 'main_classes#index'
    resources :admins
    resources :main_classes
    resources :sub_classes
    resources :sub_class_details
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
