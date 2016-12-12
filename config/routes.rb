Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :challenges do
    resources :members, only: [:create]
    get 'invite', on: :member
    post 'send_invite', on: :member
    get 'voting', on: :member
    get 'send_vote', on: :member
    resources :challenge_messages, only: :create
  end
  root to: 'pages#home'
end
