Rails.application.routes.draw do
	#root 'static_pages#home'
	root 'users#new'
	delete 'logout' => 'sessions#destroy'
	
	
	resources :users, only: [:create, :new, :show, :index]
	resources :events, only: [:create, :new, :show, :index]
	resources :invites
end
