Rails.application.routes.draw do

  resources :lessons

  get 'lesson/beginner', to: 'lessons#beginner'
  get 'lesson/intermediate', to: 'lessons#intermediate'
  get 'lesson/advanced', to: 'lessons#advanced'

  # get 'lesson/beginner/:id', to: 'lessons#show'
  # get 'lesson/intermediate/:id', to: 'lessons#show'
  # get 'lesson/advanced/:id', to: 'lessons#show'

  root to: 'pages#home'

  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  devise_scope :users do
    resources :users, only: [:show]
  end
end
