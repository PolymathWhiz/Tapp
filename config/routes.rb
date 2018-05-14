Rails.application.routes.draw do

  resources :tests
  resources :lessons

  get 'lesson/beginner', to: 'lessons#beginner'
  get 'lesson/intermediate', to: 'lessons#intermediate'
  get 'lesson/advanced', to: 'lessons#advanced'

  root to: 'pages#home'

  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  devise_scope :users do
    resources :users, only: [:show]
  end
end
