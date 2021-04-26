Rails.application.routes.draw do
  get 'oracle/index'
  get 'oracle/show'
  devise_for :users
  resources :vibes
  resources :image_elements
  resources :oracles
  root "vibes#index"
end
