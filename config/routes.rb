Rails.application.routes.draw do
  post 'users/create'
  post 'create_login_session'=>'users#create_login_session'
  get 'register'=>'users#new'
  get 'login'=>'users#login'
  root :to => 'pages#welcome' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
