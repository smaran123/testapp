Rails.application.routes.draw do
	resources :categories do
		resources :products do 
			#get :delete
		end
	end
	root "articles#index"
	resources :articles do 
		resources :comments
	end

end

