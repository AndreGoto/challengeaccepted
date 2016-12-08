Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :challenges do
    get 'invite', on: :member
    post 'send_invite', on: :member
    resources :challenge_messages, only: :create
  end
  root to: 'pages#home'
end
