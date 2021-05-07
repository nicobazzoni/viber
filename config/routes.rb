Rails.application.routes.draw do
  get 'image_elements/index'
  get 'image_elements/new'
  get 'image_elements/auras'
  get 'image_elements/details'
  get 'spotify/index'
  get 'pages/index'
  post 'messages', to: 'pages#create'
  get 'spotify/index'
  get 'oracles', to: 'oracles#index'
  
  get 'youtube/index'
 

 
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  
  
    
    
 
  resources :vibes

  resources :image_elements
  resources :oracles
  resource :messages
  resources :pages
  
  
  root "vibes#index"
end
