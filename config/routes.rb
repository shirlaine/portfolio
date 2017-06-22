Rails.application.routes.draw do
	resources :posts
	get 'welcome/index'
	root 'welcome#index'
	get 'welcome/video'
	#root "posts#homepage"
	#root "posts#index"
	

	get 'forms/new' => 'forms#new'
	resources :forms

end
