Rails.application.routes.draw do
  resources :static_files
  resources :contents
  root "static_pages#top"
  get '/top', to: 'static_pages#top'
  get '/signup', to: 'users#new'
  get '/login', to: 'users#login_form'
  post '/login', to: 'users#login'
  get '/home', to: 'home#index'
  delete '/logout', to: 'users#destroy'
  get '/addresses', to: 'addresses#index'
  get '/contents', to: 'contents#index'
  get '/xxx/:content_id' ,to: 'present#show'
  resources :addresses
  resources :users
  get '/user', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
