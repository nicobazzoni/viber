Rails.application.routes.draw do
  get 'image_elements/index'
  get 'spotify/index'
  get 'pages/index'
  post 'messages', to: 'pages#create'
  get 'spotify/index'
  get 'oracle/index'
  get 'oracle/show'
  get 'youtube/index'
 
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  
  
    
    
 
  resources :vibes

  resources :image_elements
  resources :oracles
  resource :messages
  resources :pages
  
  
  root "vibes#index"
end
