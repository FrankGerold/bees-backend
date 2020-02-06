Rails.application.routes.draw do
  # resources :answers

  resources :quizzes, only:[:create, :show, :index]

  resources :questions, only:[:create, :show, :index]

  resources :users, only: [:create, :show, :index]

  post '/login', to: 'auth#create'

  get '/profile', to: 'users#profile'

  get '/auth', to: 'auth#persist'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
