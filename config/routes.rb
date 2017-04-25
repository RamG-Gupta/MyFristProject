Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/new'

  resources :sessions
  resources :users
  resources :articles do
  	collection do 
  		get 'abc'
  	end
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
