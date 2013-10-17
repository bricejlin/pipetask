Pipetrack::Application.routes.draw do
  root 'pipes#index'

  resources :pipes do
    resources :images
    member do
    	put :approve
    end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  get 'admin', to: 'admin#index'
  get '/signup',  to: 'users#new'
  get '/signin',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
end
