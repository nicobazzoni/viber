Rails.application.routes.draw do
  get 'pages/index'
  post 'messages', to: 'messages#create'
  
  get 'oracle/index'
  get 'oracle/show'
  
  devise_for :users
  resources :vibes
  get 'vibes/vibemeter'
  resources :image_elements
  resources :oracles
  resource :messages
  resources :pages
  
  root "vibes#index"
end
