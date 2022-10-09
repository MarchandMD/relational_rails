Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/mountains', to: 'mountains#index'
  get '/mountains/new', to: 'mountains#new'
  get '/mountains/:id', to: 'mountains#show'
  post '/mountains', to: 'mountains#create'
  get '/trails', to: 'trails#index'
  get '/trails/:id', to: 'trails#show'
  get '/mountains/:mountain_id/trails', to: 'mountains_trails#index'
end
