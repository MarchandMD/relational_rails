Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/mountains', to: 'mountains#index'
  get '/mountains/new', to: 'mountains#new'
  get '/mountains/:id', to: 'mountains#show'
  post '/mountains', to: 'mountains#create'
  get '/mountains/:id/edit', to: 'mountains#edit'
  patch '/mountains/:id', to: 'mountains#update'
  delete '/mountains/:id', to: 'mountains#destroy'

  get '/trails', to: 'trails#index'
  get '/trails/:id', to: 'trails#show'
  get '/trails/:id/edit', to: 'trails#edit'
  patch '/trails/:id', to: 'trails#update'
  delete '/trails/:id', to: 'trails#destroy'

  get '/mountains/:mountain_id/trails', to: 'mountain_trails#index'
  get '/mountains/:mountain_id/trails/new', to: 'mountain_trails#new'
  post '/mountains/:mountain_id/trails', to: 'mountain_trails#create'
end
