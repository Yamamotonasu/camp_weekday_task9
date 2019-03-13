Rails.application.routes.draw do
  root 'tasks#index'
  get '/tasks/hide', to: 'tasks#hide'
  resources :tasks
end
