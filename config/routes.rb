Rails.application.routes.draw do
  devise_for :users

  resources :users do
  	resources :tasks do
  	  member do
	      post 'complete'
	    end
  	end
  	get 'today' => 'tasks#today'
  	get 'week' => 'tasks#week'
  end

  root 'welcome#index'

end
