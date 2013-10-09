Pipetrack::Application.routes.draw do
  root 'pipes#index'
  resources :pipes do
    resources :images
    member do
    	put :approve
    end
  end
end
