Rails.application.routes.draw do
  resources :maps
  resources :videos
  resources :sensors do
  	resources :values
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
