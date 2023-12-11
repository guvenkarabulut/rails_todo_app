Rails.application.routes.draw do
  resources :todos do
    resources :sub_todos
  end
  # resources :sub_todos post 'sub_todos/:todo_id/create' => 'sub_todos#create', as: 'create_sub_todo'
  devise_for :users
  root 'pages#home'
  get 'pages/about'
  # for complete todo button
  patch 'todos/:id/complete' => 'todos#complete', as: 'complete_todo'
end
