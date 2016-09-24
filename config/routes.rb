Rails.application.routes.draw do
  get '/users' => 'users#index'
  get '/user_article/:id' => 'users#show',　as:'user_article'
  devise_for :users
  resources :articles do
  	resource :like, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	end
end
