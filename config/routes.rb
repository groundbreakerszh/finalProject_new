Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
   root 'users#index'

   resources :soft_skills
   resources :hard_skills

  get 'users/new'

  get 'sessions/new'

  get '/', to: 'site#home'
  get '/register', to: 'site#register'
  get '/profile', to: 'site#profile'
  get '/member', to: 'site#member'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
