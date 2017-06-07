Rails.application.routes.draw do
  get 'signup' => "signup#new"
  post 'signup' => "signup#create"

  get 'login' => "session#new"
  post 'login' => "session#create"
  delete 'login' => "session#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
  get 'submit' => "main#new"
  post 'posts' => "main#create"

  get 'auth/logout' => 'auth#logout'
  get 'auth/failure' => 'auth#failure'
  get 'auth/:provider/callback' => 'auth#callback'

end
