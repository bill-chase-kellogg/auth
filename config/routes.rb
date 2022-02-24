Rails.application.routes.draw do
  root 'companies#index'
  resources :companies
  resources :contacts
  resources :activities
  resources :tasks
  resources :users
  resources :sessions
end
