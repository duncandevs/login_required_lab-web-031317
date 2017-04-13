Rails.application.routes.draw do
  get '/' , to: 'sessions#index', as: 'home'
  get '/login' , to: 'sessions#new' , as: 'login'
  post '/login' , to: 'sessions#create' ,as: 'create'

  get '/secrets' , to: 'secrets#show', as: 'secrets'
  post '/destroy', to: 'sessions#destroy'
end
