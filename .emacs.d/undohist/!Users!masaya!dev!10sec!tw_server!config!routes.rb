
((digest . "a8f8b5ec5227d8648f9e58f3d6be15bc") (undo-list nil ("    scope 'v1' do
      use_doorkeeper do
        controllers tokens: \"v1/tokens\"
      end
    end
    namespace :v1, defaults: { format: 'json' } do
      resource  :share,             only: [:show]
      resources :settings,          only: [:index]
      resources :dialogs,           only: [:index]
      resources :campaigns,         only: [:index]
      resource  :zencoder_callback, only: [:create]
      resource  :profile,           only: [:show, :update] do
        patch :device
        post :instagram
        patch :online
        post :password
      end
      resource :credit_card,        only: [:create, :update, :destroy]
      resource :withdrawal_account, only: [:create, :destroy]
      resources :users, only: [:show, :index], id:  /[a-zA-Z0-9_\\-\\.]+/ do
        member do
          get :reviews
        end
        collection do
          get :vacancy
        end
      end
      resources :categories, only: [:index]
      resources :activity_threads, only: [:index, :show]
      resources :activities, only: [:index, :show] do
        post :read, on: :collection
      end
      resources :products, only: [:index, :show, :update, :destroy] do
        resource :activity_thread, only: [:show]
        collection do
          get :search
          get :count
          get :watch
          patch :draft
        end
        member do
          get :relatives
          post :violation
        end
        get :mentionable_users
        resource :like, only: [:create, :destroy]
        resources :comments, only: [:index, :create]
        resources :comments, only: [:destroy], shallow: true
        resources :messages, only: [:create]
        resource :offer, only: [:create] do
          get :preview
        end
        resources :offers, only: [:index]
        resources :orders, path: 'purchase', only: [:create] do
          get :preview, on: :collection
        end
      end
      resources :drafts, only: [:index, :show, :update, :destroy]
      resources :offers, only: [:show] do
        post :accept
        post :decline
      end
      resources :orders, only: [:index, :show] do
        collection do
          get :sold
          get :bought
        end
        member do
          patch :review
          post :ship
          post :arrive
          post :cancel
        end
      end
      resources :tags, only: [] do
        collection do
          get :popular
          get :shuffled
          get :suggested
          get :relative
        end
      end
    end

" . 105) ((marker . 1) . -2118) ((marker . 1949) . -2509) ((marker . 1949) . -2509) ((marker . 1961) . -2508) ((marker . 1961) . -2508) ((marker . 2003) . -2500) ((marker . 2003) . -2500) ((marker . 2049) . -2490) ((marker . 2049) . -2490) ((marker . 2089) . -2478) ((marker . 2089) . -2478) ((marker . 2101) . -2454) ((marker . 2101) . -2454) ((marker . 2111) . -2429) ((marker . 2111) . -2429) ((marker . 2150) . -2405) ((marker . 2150) . -2405) ((marker . 2192) . -2382) ((marker . 2192) . -2382) ((marker . 2210) . -2360) ((marker . 2210) . -2360) ((marker . 2233) . -2325) ((marker . 2233) . -2325) ((marker . 2257) . -2315) ((marker . 2257) . -2315) ((marker . 2269) . -2303) ((marker . 2269) . -2303) ((marker . 2279) . -2280) ((marker . 2279) . -2280) ((marker . 2329) . -2257) ((marker . 2329) . -2257) ((marker . 2371) . -2236) ((marker . 2371) . -2236) ((marker . 2389) . -2212) ((marker . 2389) . -2212) ((marker . 2410) . -2194) ((marker . 2410) . -2194) ((marker . 57) . -2182) ((marker . 57) . -2182) ((marker . 24) . -2160) ((marker . 24) . -2160) ((marker . 1) . -2118) ((marker . 1) . -2118) ((marker . 23) . -2140) ((marker . 23) . -2140) ((marker . 105) . -2478) ((marker . 105) . -2478) ((marker) . -2509) ((marker . 105) . -1327) ((marker) . -2509) 2614 (t 21934 8544 0 0)))
