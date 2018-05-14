Rails.application.routes.draw do

  resources :tests
  resources :lessons

  get 'lesson/beginner', to: 'lessons#beginner'
  get 'lesson/intermediate', to: 'lessons#intermediate'
  get 'lesson/advanced', to: 'lessons#advanced'

  get '/tests/beginner_quiz', to: 'test#beginner_quiz'
  get '/tests/intermediate_quiz', to: 'test#intermediate_quiz'
  get '/tests/advanced_quiz', to: 'test#advanced_quiz'

  root to: 'pages#home'

  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  devise_scope :users do
    resources :users, only: [:show]
  end
end
