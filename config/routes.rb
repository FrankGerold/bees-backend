Rails.application.routes.draw do
  # resources :answers
  # resources :questions
  # resources :quizzes
  resources :users, only: [:create, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
