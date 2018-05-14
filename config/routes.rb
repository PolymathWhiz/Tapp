Rails.application.routes.draw do

  resources :tests, only: [:index]
  resources :lessons

  get 'lesson/beginner', to: 'lessons#beginner'
  get 'lesson/intermediate', to: 'lessons#intermediate'
  get 'lesson/advanced', to: 'lessons#advanced'

  get '/tests/beginner_quiz', to: 'tests#beginner_quiz'
  get '/tests/intermediate_quiz', to: 'tests#intermediate_quiz'
  get '/tests/advanced_quiz', to: 'tests#advanced_quiz'

  root to: 'pages#home'

  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  devise_scope :users do
    resources :users, only: [:show]
  end
end
