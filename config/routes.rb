Rails.application.routes.draw do
	resources :posts
	get 'welcome/index'
	root 'welcome#index'
	#root "posts#homepage"
	#root "posts#index"
end
