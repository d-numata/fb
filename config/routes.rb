Rails.application.routes.draw do
#  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#  devise_for :users
# 以下の1行を削除する
#get 'top/index'

  resources :tweets, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :confirm
    end
  end
  
  root 'top#index'
#  get 'tweets/index'#<<<<この行を削除する

#  get 'tweets' => 'tweets#index' #<<<<<この行を追加する

#  if Rails.env.development?
#    mount LetterOpenerWeb::Engine, at: "/letter_opener"
#  end


  get 'notifications/index'

#  get 'messages/index'

#  get 'messages/create'

#  get 'conversations/index'

#  get 'conversations/create'

  get 'relationships/create'

  get 'relationships/destroy'

#  get 'users/index'

#  get 'comments/create'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

#resources :users, only: [:index]
resources :users, only: [:index, :show]

#  get 'top/index'

# get 'contacts' => 'contacts#index'
# get 'contacts' => 'contacts#new'
 get 'blogs' => 'blogs#index'
#  get 'contacts/index'

#resources :blogs, only: [:index, :new, :create, :edit, :update, :destroy] do
#  collection do
#    post :confirm
#  end

resources :conversations do
  resources :messages
end

resources :relationships, only: [:create, :destroy]

resources :blogs do
  resources :comments
    post :confirm, on: :collection
  end

# 
#resources :blogs do
#  resources :comments
#  post :confirm, on: :collection
#end

#resources :contacts, only: [:new, :create]
resources :contacts, only: [:new, :create] do
  collection do
    post :confirm
  end
end
resources :poems, only: [:index, :show] #この行を追記する
#resources :tweets, only: [:new, :create, :edit, :update, :destroy] do
#  collection do
#    post :confirm
#  end
#end
root 'top#index'

if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
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
