Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
