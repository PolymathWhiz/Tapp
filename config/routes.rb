Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  
  devise_scope :users do
    resources :users, only: [:show]
  end
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }
end
