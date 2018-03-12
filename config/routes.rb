Rails.application.routes.draw do

  root to: 'pages#home'

   devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  
  devise_scope :users do
    resources :users, only: [:show]
  end

 
end
