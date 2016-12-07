Rails.application.routes.draw do
  devise_for :users
  resources :challenges do
    get 'invite', on: :member
    post 'send_invite', on: :member
  end
  root to: 'pages#home'
end
