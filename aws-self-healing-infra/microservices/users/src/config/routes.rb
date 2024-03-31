Rails.application.routes.draw do
  resources :users, only: [:create, :index]
  post 'login', to: 'sessions#create'
end
