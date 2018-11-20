Rails.application.routes.draw do
  resources :static_files
  resources :addresses
  resources :contents
  root "static_pages#top"
  get '/top', to: 'static_pages#top'
  get '/signup', to: 'users#new'
  get '/login', to: 'users#login_form'
  post '/login', to: 'users#login'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
