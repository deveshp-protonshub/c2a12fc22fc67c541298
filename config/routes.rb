Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions do 
  	resources :answers
  end

  resources :topics do
  	member do
  		post 'follow'
  	end
  end

  resources :users do
  	member do
  		post 'follow'
  	end
  end  

  root to: "questions#index" 

end
