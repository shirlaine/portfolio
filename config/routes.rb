Rails.application.routes.draw do
	resources :posts
	root "posts#homepage"
	#root "posts#index"
end
