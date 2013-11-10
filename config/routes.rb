Coolkids::Application.routes.draw do
  devise_for  :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}
  
  resources   :users
  resources   :venues
  
  root 'pages#home'


end
