Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root   'static_pages#home'                    # トップページ
  get    '/help',    to: 'static_pages#help'    # ヘルプページ
  get    '/about',   to: 'static_pages#about'   # アバウトページ
  get    '/contact', to: 'static_pages#contact' # 
  get    '/signup',  to: 'users#new'            # 新規登録ページ
  get    '/login',   to: 'sessions#new'         # ログインページ
  post   '/login',   to: 'sessions#create'      # ログイン処理
  delete '/logout',  to: 'sessions#destroy'     # ログアウト処理
  resources :users  # 新規登録、詳細、編集、削除
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # GET     /users          users#index   一覧
  # POST    /users          users#create  新規登録処理
  # GET     /users/new      users#new     新規登録ページ
  # GET     /users/id/edit users#edit     
  # GET     /users/id      users#show     プロフィール
  # PATCH   /users/id      users#update   
  # PUT     /users/id      users#update   
  # DELETE  /users/id      users#destroy  
end
