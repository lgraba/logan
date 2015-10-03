Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :resumes
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
  get 'resume' => 'resumes#index'
  get 'about' => 'about#index'
  get '*path' => redirect('/')
end
