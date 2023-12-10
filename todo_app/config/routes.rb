Rails.application.routes.draw do
  resources :todos
  devise_for :users
  root 'pages#home'
  get 'pages/about'
  # for complete todo button
  patch 'todos/:id/complete' => 'todos#complete', as: 'complete_todo'
end
