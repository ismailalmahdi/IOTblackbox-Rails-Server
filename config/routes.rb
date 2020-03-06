Rails.application.routes.draw do



  resources :contacts
  resources :streams
  resources :maps do
    get 'current', on: :collection
  end

  resources :videos

  resources :sensors do
   resources :values do
     get 'current', on: :collection
   end
  end

  resources :sensor_types do
    resources :sensors do
  	 resources :values
    end
  end

  #devise routes
  devise_for :users

  # root route
  root 'welcome#index'
end
