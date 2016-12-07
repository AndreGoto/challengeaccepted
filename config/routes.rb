Rails.application.routes.draw do
  devise_for :users
  resources :challenges, only: [:show, :new, :edit]
  root to: 'pages#home'
end
