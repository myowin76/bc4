Bc4::Application.routes.draw do

 

  # get "password_resets/new"
  # get "sessions/create"
  # get "sessions/destroy"
  
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :password_resets
  resources :users
  # get '/admin/users/new', to: redirect('/users/sign_up')
  resources :newsletters
  match 'subscribe' => 'newsletters#new', via: :get, :as => :subscribe_newsletter
  # match 'newsletters/subscribe' => 'newsletters#new', via: :get, :as => :subscribe_newsletter

  # get "cms_desk/index"
  # match 'web/cmsdesk' => 'web/pages#index', via: :get, :as => :web_cms

  get "home/index"
  get "wed/wed/dashboard"
  get "wed/score_card"
  get "wed/latest_report"
  get "wed/peer_comparison"
  get "wed/best_practice"
  get "wed/results_table"
  

  match 'wed' => 'wed/wed#dashboard', via: :get
  match 'wed/dashboard' => 'wed/wed#dashboard', via: :get, :as => :wed_dashboard
  match 'wed/score-card' => 'wed/wed#score_card', via: :get, :as => :score_card
  match 'wed/latest-report' => 'wed/wed#latest_report', via: :get, :as => :latest_report
  match 'wed/progress-chart' => 'wed/wed#progress_chart', via: :get, :as => :progress_chart
  match 'wed/peer-comparison' => 'wed/wed#peer_comparison', via: :get, :as => :peer_comparison
  match 'wed/best-practice' => 'wed/wed#best_practice', via: :get, :as => :best_practice
  match 'wed/results-table' => 'wed/wed#results_table', via: :get, :as => :results_table
  match 'wed/consultancy' => 'wed/wed#consultancy', via: :get, :as => :wed_consultancy
  match 'wed/wen' => 'wed/wed#wen', via: :get, :as => :wed_wen

  match 'admin' => 'admin/admin#dashboard', via: :get, :as => :admin_dashboard
  match 'admin/advanced-search' => 'admin/admin#advanced_search', via: :get, :as => :admin_advanced_search
  match 'admin/manage-report/:id' => 'admin/reports#manage_report', via: :get, :as => :manage_report
  match 'admin/emails' => 'admin/system_emails#index', via: :get, :as => :admin_emails

  # CMSDESK
  match 'admin/cmsdesk' => 'admin/cms_desk#index', via: :get, :as => :cms_desk
  match 'admin/cmsdesk/web' => 'web/pages#index', via: :get, :as => :cms_desk_web_pages
  match 'admin/cmsdesk/web/new' => 'web/pages#new', via: :get, :as => :cms_desk_new_web_page
  match 'admin/cmsdesk/web/:id/edit' => 'web/pages#edit', via: :get, :as => :cms_desk_edit_web_page
  match 'admin/cmsdesk/commentaries' => 'admin/commentaries#index', via: :get, :as => :cms_desk_commentaries
  match 'admin/cmsdesk/bctips' => 'admin/bctips#index', via: :get, :as => :cms_desk_bctips

  match 'wed/company-profile/:id' => 'wed/wed#company_profile', via: :get, :as => :company_profile
  match 'wed/account/my-peers' => 'wed/wed#my_peers', via: :get, :as => :my_peers
  match 'wed/account/my-account' => 'wed/wed#my_account', via: [:get], :as => :my_account
  match 'wed/account/my-account-update' => 'wed/wed#my_account_update', via: [:post], :as => :my_account_update

  match 'wed/search' => 'wed/wed#search', via: :get, :as => :wed_search
  match 'wed/advanced-search' => 'wed/wed#advanced_search', via: :get, :as => :wed_advanced_search

  namespace :web do
    resources :widgets
    resources :pages, only: [:index, :new, :create]
    resources :pages, path: "", except: [:index, :new, :create]
  end

  namespace :admin do

    resources :users, :roles
    resources :system_emails

    resources :companies do
      collection do
        post :best_practice_all
      end

      resources :reports
    end

    resources :company_types, :company_statuses, :sectors, :regions, :countries, :subscriptions
    resources :metrics do
      # resources :notes
    end

    resources :reports do
      resources :notes
      resources :metrics
      resources :screengrabs

      collection do
        # get :generate_pdf
      end
    end
    resources :projects do
      resources :reports
    end

    resources :report_states, :report_types, :report_tags
  
    resources :bctips, :commentaries

    resources :best_practices do
      resources :screengrabs  
    end
  end

  

  # to do routes
    
  # company profile route
  # match 'profile/company/:id' => 'admin/companies#profile', via: :get, :as => :company_profile

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'admin/companies#index'


  unless Web::Page.find_by_url("home").nil?
      root 'web/pages#show', :id => Web::Page.find_by_url("home").id
  else

    root 'web/pages#index'
  end
  # Web::Page.all.each do |page|
  #   get page.url, :controller => 'pages', :action => 'show', :id => page
  # end


  get '*id', to: 'web/pages#show', as: :page
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
