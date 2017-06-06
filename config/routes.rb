Rails.application.routes.draw do
  resources :images
  resources :user_roles
  resources :places do
    collection do
      get :user_login
    end
    member do
      get :place_edit
      get :place_show
      post :comments
      put "like", to: "places#upvote"
      put "dislike", to: "places#downvote"
    
   end
 end
 resources :states do
    collection do
       get :get_states
     end
    member do 
      get :states_edit
      get :states_show
      post :comments
    end
  end
  resources :nodes
  resources :countries do
    member do
      get :country_show
      get :country_edit
       post :comments
    end
  end
 resources :companies do 
   member do
      get :inline_edit
      get :company_show
      post :comments
    end
 end
  resources :cities do
    collection do
      get :get_cities
    end
     member do
      get :cities_edit
      get :cities_show
      post :comments
    end
  end
  devise_for :users
  resources :comments, only: [] do
      member do
        put "like", to: "comments#upvote"
        put "dislike", to: "comments#downvote"
      end
    end


resources :manages do
    member do
      get :manange_show
    end
    
  end 
    resources :companies, only: [] do
      member do
        put "like", to: "companies#upvote"
        put "dislike", to: "companies#downvote"
      end
    end
     root 'companies#index'
end
