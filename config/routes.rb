Coolkids::Application.routes.draw do
  devise_for  :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}
  
  resources :users
  
  resources :reviews
  
  resources :venues do 
    resources :reviews
  end

  root 'pages#home'
end
