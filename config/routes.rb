Aaa::Application.routes.draw do
  post 'download_and_uploads/download',:to =>'download_and_uploads#download'
  get 'download_and_uploads/download',:to =>'download_and_uploads#download'
  post 'download_and_uploads/uploadFile',:to =>'download_and_uploads#uploadFile'
  resources :download_and_uploads

  post '/send_mails/',:to =>'send_mails#index'
  #  post '/send_mails/new',:to =>'send_mails#create'
  #  get '/send_mails/',:to =>'send_mails#index'
  get "api_test/show_all"
  get "api_test/show_json"
  get "api_test/show_xml"
  get "api_test/get_user"
  post "api_test/post_user"
  post '/users/new',:to =>'users#new'
  get '/users/login',:to =>'users#login'
  post '/users/login',:to =>'users#login'
  get '/users/logout',:to =>'users#logout'
  resources :send_mails
  resources :users

  #get '/users',:to =>'users#index'
  #get '/users/show',:to =>'users#show'
  #get '/users/destroy',:to =>'users#index'
  #get '/users/edit',:to =>'users#edit'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #   root 'users#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #     resources :users do
  #       member do
  #         get 'login'
  #         post 'loggin'
  #       end
  #
  #     collection do
  #       get 'sold'
  #     end
  #     end

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
  #  root :to => 'users#login'

end