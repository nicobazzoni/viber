Rails.application.routes.draw do
  devise_for :users
  resources :vibes
  resources :image_elements
  root "vibes#index"
end
