
Rails.application.routes.draw do
  concern :range_searchable, BlacklightRangeLimit::Routes::RangeSearchable.new
  root to: "catalog#index"
  devise_for :users

  mount Blacklight::Engine => '/'

  concern :searchable, Blacklight::Routes::Searchable.new
  concern :exportable, Blacklight::Routes::Exportable.new

  resource :catalog, only: [:index], controller: 'catalog' do
    concerns :searchable
    concerns :range_searchable

  end
  
resources :solr_documents, except: [:index], path: '/catalog', controller: 'catalog' do
      concerns :exportable
end

  resources :bookmarks do
    concerns :exportable

    collection do
      delete 'clear'
    end
  end
   # collections
   #get '/catalog' => 'catalog#index'
   #get '/collection/:subject' => 'catalog#index'
  get '/contact' => 'high_voltage/pages#show', :id => 'contact'

  # redirect older aerial and ragamala urls
  get '/ragamala', to: redirect('/collection/ragamala')
  get '/aerialny', to: redirect('/collection/aerialny')
  get '/huntingtonfreelibrary', to: redirect('/collection/huntingtonfreelibrary')
  get '/bolivianpamphlets', to: redirect('/collection/bolivianpamphlets')

  
  # no facets on high voltage
  get '/collection/aerialny' => 'high_voltage/pages#show', :id => 'collection/aerialny/index'
  get '/collection/indonesianmusic' => 'high_voltage/pages#show', :id => 'collection/indonesianmusic/index'
  get '/collection/ragamala' => 'high_voltage/pages#show', :id => 'collection/ragamala/index'
  get '/collection/:subject' => 'catalog#index'





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
