
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
  get '/image-credits' => 'high_voltage/pages#show', :id => 'image_credits'
  get '/about' => 'high_voltage/pages#show', :id => 'about'

  # redirect older urls
  get '/ragamala', to: redirect('/collections/ragamala')
  get '/aerialny', to: redirect('/collections/aerialny')
  get '/huntingtonfreelibrary', to: redirect('/collections/huntingtonfreelibrary')
  get '/bolivianpamphlets', to: redirect('/collections/bolivianpamphlets')
  get '/collection/adwhite', to: redirect('/collections/adwhite')
  get '/collection/aerialny', to: redirect('/collections/aerialny')
  get '/collection/alisonmasonkingsbury', to: redirect('/collections/alisonmasonkingsbury')
  get '/collection/artifactsandart', to: redirect('/collections/artifactsandart')
  get '/collection/bastides', to: redirect('/collections/bastides')
  get '/collection/beyondthetaj', to: redirect('/collections/beyondthetaj')
  get '/collection/bolivianpamphlets', to: redirect('/collections/bolivianpamphlets')
  get '/collection/cast', to: redirect('/collections/cast')
  get '/collection/coins', to: redirect('/collections/coins')
  get '/collection/eleusis', to: redirect('/collections/eleusis')
  get '/collection/hiphopflyers', to: redirect('/collections/hiphopflyers')
  get '/collection/huntingtonfreelibrary', to: redirect('/collections/huntingtonfreelibrary')
  get '/collection/isbellandes', to: redirect('/collections/isbellandes')
  get '/collection/joeconzo', to: redirect('/collections/joeconzo')
  get '/collection/johnclairmiller', to: redirect('/collections/johnclairmiller')
  get '/collection/johnreps', to: redirect('/collections/johnreps')
  get '/collection/loewentheil', to: redirect('/collections/loewentheil')
  get '/collection/persuasivemaps', to: redirect('/collections/persuasivemaps')
  get '/collection/racker', to: redirect('/collections/efraimracker')
  get '/collection/ragamala', to: redirect('/collections/ragamala')
  get '/collection/squeeze', to: redirect('/collections/squeeze')

  # no facets on high voltage
  # prod pages
  get '/collections' => 'catalog#facet', :id => 'collection_tesim'

  # prod pages
  get '/collections/aerialny' => 'high_voltage/pages#show', :id => 'collections/aerialny/index'
  get '/collections/afrika-bambaataa' => 'high_voltage/pages#show', :id => 'collections/afrika-bambaataa/index'
  get '/collections/anthrocollections' => 'high_voltage/pages#show', :id => 'collections/anthrocollections/index'
  get '/collections/art2301' => 'high_voltage/pages#show', :id => 'collections/art2301/index'
  get '/collections/artifactsandart' => 'high_voltage/pages#show', :id => 'collections/artifactsandart/index'
  get '/collections/bees' => 'high_voltage/pages#show', :id => 'collections/bees/index'
  get '/collections/blaschka' => 'high_voltage/pages#show', :id => 'collections/blaschka/index'
  get '/collections/chla' => 'high_voltage/pages#show', :id => 'collections/chla/index'
  get '/collections/eleusis' => 'high_voltage/pages#show', :id => 'collections/eleusis/index'
  get '/collections/fallout' => 'high_voltage/pages#show', :id => 'collections/fallout/index'
  get '/collections/flowers' => 'high_voltage/pages#show', :id => 'collections/flowers/index'
  get '/collections/hearth' => 'high_voltage/pages#show', :id => 'collections/hearth/index'
  get '/collections/impersonator-postcards' => 'high_voltage/pages#show', :id => 'collections/impersonator-postcards/index'
  get '/collections/indonesianmusic' => 'high_voltage/pages#show', :id => 'collections/indonesianmusic/index'
  get '/collections/iwo-jpfo' => 'high_voltage/pages#show', :id => 'collections/iwo-jpfo/index'
  get '/collections/japanesetheater' => 'high_voltage/pages#show', :id => 'collections/japanesetheater/index'
  get '/collections/japaneseworld' => 'high_voltage/pages#show', :id => 'collections/japaneseworld/index'
  get '/collections/lindsaycooper' => 'high_voltage/pages#show', :id => 'collections/lindsaycooper/index'
  get '/collections/paniccioli' => 'high_voltage/pages#show', :id => 'collections/paniccioli/index'
  get '/collections/prison-reform' => 'high_voltage/pages#show', :id => 'collections/prison-reform/index'
  get '/collections/punkflyers' => 'high_voltage/pages#show', :id => 'collections/punkflyers/index'
  get '/collections/ragamala' => 'high_voltage/pages#show', :id => 'collections/ragamala/index'
  get '/collections/railroad' => 'high_voltage/pages#show', :id => 'collections/railroad/index'
  get '/collections/rudin' => 'high_voltage/pages#show', :id => 'collections/rudin/index'
  get '/collections/srilanka' => 'high_voltage/pages#show', :id => 'collections/srilanka/index'
  get '/collections/stereoscopes' => 'high_voltage/pages#show', :id => 'collections/stereoscopes/index'
  get '/collections/tamang' => 'high_voltage/pages#show', :id => 'collections/tamang/index'
  get '/collections/tarr' => 'high_voltage/pages#show', :id => 'collections/tarr/index'
  get '/collections/tell-en-nasbeh' => 'high_voltage/pages#show', :id => 'collections/tell-en-nasbeh/index'
  get '/collections/wordsworth' => 'high_voltage/pages#show', :id => 'collections/wordsworth/index'

  # dev pages
  if ENV['COLLECTIONS'] == "development"
    get '/collections/dynkin' => 'high_voltage/pages#show', :id => 'collections/dynkin/index'
    get '/collections/kmoddl' => 'high_voltage/pages#show', :id => 'collections/kmoddl/index'
    get '/collections/nys-dendro' => 'high_voltage/pages#show', :id => 'collections/nys-dendro/index'
    get '/collections/seneca' => 'high_voltage/pages#show', :id => 'collections/seneca/index'
    get '/collections/scottsboro' => 'high_voltage/pages#show', :id => 'collections/scottsboro/index'
  end

  get '/collections/:subject' => 'catalog#index'


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
