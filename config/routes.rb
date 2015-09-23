Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
  get 'about' => 'about#index'
  get '*path' => redirect('/')
end
