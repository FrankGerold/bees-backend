Rails.application.routes.draw do
  resources :users, only: [:create, :show, :index]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'

  resources :quizzes, only:[:create, :show, :index, :update]
    get '/userquizzes', to: 'quizzes#user'

  resources :questions, only:[:create, :show, :index]

  # resources :answers

  # get '/auth', to: 'auth#persist'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
