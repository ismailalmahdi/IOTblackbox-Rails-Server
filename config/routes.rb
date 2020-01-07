Rails.application.routes.draw do


  resources :contacts
  resources :streams
  resources :maps do
    get 'current', on: :collection
  end

  resources :videos
  resources :sensors do
  	resources :values
  end

  #devise routes
  devise_for :users

  # root route
  root 'welcome#index'
end
