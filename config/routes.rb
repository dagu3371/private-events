Rails.application.routes.draw do
	#root 'static_pages#home'
	root 'users#new'
	delete 'logout' => 'sessions#destroy'
	
	get 'logged_in' => 'users#show'
	get 'posted' => 'events#index'
	get 'create_event' => 'events#new'
	resources :users, only: [:create, :new, :show]
	resources :events, only: [:create, :new, :show, :index]
	resources :invites
end
