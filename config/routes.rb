Coolkids::Application.routes.draw do
  devise_for  :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}
  
  resources :users

  resources :users
  
  resources :reviews
  
  resources :venues do 
    resources :reviews
  end

  post '/venues/search_foursquare' => 'venues#search_foursquare' 

  get '/profile' => 'users#profile' 

  get '/share' => 'shares#new' 

  root 'pages#home'
end
