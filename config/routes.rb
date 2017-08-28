Rails.application.routes.draw do
  get '/' => 'stones#index'
  get '/stones' => 'stones#index'

  get 'stones/new' => 'stones#/new'
  post 'stones/' => 'stones#create'

  get 'stones/:id' => 'stones#show'

  get '/stones/:id/edit' => 'stones#edit'
  patch '/stones/:id' => 'stones#update'

  delete '/stones:id' => 'stones#destroy'


end
