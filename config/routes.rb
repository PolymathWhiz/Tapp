Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }
end
