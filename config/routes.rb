Rails.application.routes.draw do
  resources :boats, :trips, :logbooks, :logs
  resources :users, only: %i[create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'user#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
