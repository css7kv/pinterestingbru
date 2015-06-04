Rails.application.routes.draw do

  get 'welcome/index'
  

	devise_for :users 

	resources :boards 

		
	resources :pins do
		get 'addtoboard', on: :member
		put 'boards/:id', to: 'pins#add2', as: 'add2'
		member do
	      post 'like'
	    end
	end


	

	root 'welcome#index'
end
