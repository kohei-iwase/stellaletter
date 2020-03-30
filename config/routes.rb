Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :characters do
	resource :favorites, only: [:create, :destroy]
	resource :bouquets,  only: [:create, :destroy]
    resource :comments, only: [:create, :edit, :update, :destroy]
end
#ホームとアバウトへのリンク作成

end
