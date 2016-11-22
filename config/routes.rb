Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/new', to: 'articles#new'
  post '/new', to: 'articles#create'
  get '/article/:id', to: 'articles#show'
  root to: 'articles#index'
end
