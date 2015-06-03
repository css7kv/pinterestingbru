Rails.application.routes.draw do

  get 'welcome/index'

	devise_for :users

	resources :boards
	resources :pins

	root 'welcome#index'
end
