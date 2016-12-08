Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :challenges do
    resources :challenge_messages, only: :create
   end
  root to: 'pages#home'
end
