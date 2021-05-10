Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :articles
  resources :articles do
    resources :comments
  
  end
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end

