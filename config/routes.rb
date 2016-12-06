Rails.application.routes.draw do
  devise_for :users
  resources :challenges
  root to: 'pages#home'
end
