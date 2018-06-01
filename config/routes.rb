Rails.application.routes.draw do
  get 'welcome/index'

  resources :tasks
  resources :projects

  root 'welcome#index'
end
