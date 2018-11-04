Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#ogin"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
