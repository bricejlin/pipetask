Pipetrack::Application.routes.draw do
  get "admin", to: 'admin#index'
  root 'pipes#index'
  resources :pipes do
    resources :images
    member do
    	put :approve
    end
  end
end
