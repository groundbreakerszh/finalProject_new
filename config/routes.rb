Rails.application.routes.draw do
  root to: 'site#home'

  devise_for :users, :controllers => { registrations: 'registrations' }

    resources :users do
      resources :soft_skills
      resources :hard_skills
    end

   resources :cities_to_works
   resources :travel_amounts

  #get 'users/new'

  get 'sessions/new'

  get '/', to: 'site#home'
  get '/register', to: 'site#register'
  get '/profile', to: 'site#profile'
  get '/member', to: 'site#member'
  get '/member/:id', to: 'site#member'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  get '*path' => redirect('/')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
