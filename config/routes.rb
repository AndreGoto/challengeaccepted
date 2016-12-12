Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :challenges do
    resources :members, only: [:create]
    post 'accept_request', to: 'members#accept_request'
    get 'invite', on: :member
    post 'send_invite', on: :member
    post 'request_invite'
    resources :challenge_messages, only: [:create]
  end
  post 'deny_request/:id', to: 'challenge_requests#destroy'
  resources :challenge_requests, only: [:index, :destroy]
  root to: 'pages#home'
end
