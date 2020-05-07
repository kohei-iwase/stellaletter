Rails.application.routes.draw do
  devise_for :users
    resources :users, only: [:show, :edit,:update,:index] do
      member do
        get :following, :followers
        get :timelines
	    end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :characters do
    member do
      get :partners
    end
  	
    resources :letters, only: [:create,:edit,:update,:destroy,:show,:index]
  	resources :bouquets, only: [:create,:destroy]
    get :bouquets, on: :collection
  end

  #フォロイー、フォロワー作成用
  resources :relationships, only: [:create,:destroy]
  resources :pertnerships,  only: [:create,:destroy]
  #通知用のルーティング
  resources :notifications, only: :index


  root 'homes#top'

   # トップとアバウトページのrouting
   get 'homes/top' => 'homes#top', as:'top'
   get 'homes/about' => 'homes#about', as:'about'

   # 検索用
   get 'search' => 'searches#search', as: 'search'

end
