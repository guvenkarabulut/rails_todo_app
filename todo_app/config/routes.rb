Rails.application.routes.draw do
  resources :todos
  devise_for :users
  root 'pages#home'
  get 'pages/about'
  get 'up' => 'rails/health#show', as: :rails_health_check
end
