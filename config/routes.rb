Rails.application.routes.draw do
  
  resources :customers
  devise_for :users
  devise_for :employees, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages
  resources :quote
  
  root 'pages#index'

  get 'index' => 'pages#index' # index
  get 'corporate' => 'pages#corporate' # corporate
  get 'residential' => 'pages#residential' # residential
  get 'quoteform' => 'quote#new' # quote form
  get 'login' => 'pages#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
