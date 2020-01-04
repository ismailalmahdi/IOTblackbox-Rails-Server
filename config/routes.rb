Rails.application.routes.draw do

  resources :my_maps
  resources :maps do
    get 'current', on: :collection
  end

  resources :videos
  resources :sensors do
  	resources :values
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
