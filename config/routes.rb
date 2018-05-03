Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users

  resources :events do 
    post '/subscribe', to: 'events#subscribe'
    post '/unsubscribe', to: 'events#unsubscribe'
    get '/invite', to: 'events#invite' 
    post '/invite', to: 'events#invite'     
    post '/invite/:id', to: 'events#subscribe_friends', as: 'user_invited'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
