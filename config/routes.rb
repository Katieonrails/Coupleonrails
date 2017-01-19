Rails.application.routes.draw do
  resources :cities
  resources :states
  resources :test_models
	 root 'static_pages#homepage'
	 get '/examples', to:'static_pages#examples', as:'examples'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
