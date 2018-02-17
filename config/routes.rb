Rails.application.routes.draw do
  get 'pages/info'
  root 'courses#index'


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :courses

  namespace :admin do
    resources :courses
    resources :users
  end
end
