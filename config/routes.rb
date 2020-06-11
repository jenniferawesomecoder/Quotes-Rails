Rails.application.routes.draw do

  namespace :api do

    get 'list', to: 'lists#show', as: 'list_show'
    
    

    resources :lists do
      get :favorites, on: :member
      post :add_to_favorites, on: :member
      post :remove_from_favorites, on: :member
      resources :lists
    end

    resources :quotes do
      get :favorited_by, on: :member
      resources :quotes 
    end

  end

end
