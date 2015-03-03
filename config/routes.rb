Rails.application.routes.draw do

  root 'pages#index'

  get '/signup'    => 'users#new', as: :signup
  post '/signup'   => 'users#create'
  get '/login' => 'sessions#new', as: :login 
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
 
  resources :users do
    resources :doctors do
      resources :reviews 
    end 
  end 


  resources :doctors do
    resources :reviews
  end

  resources :reviews

end
