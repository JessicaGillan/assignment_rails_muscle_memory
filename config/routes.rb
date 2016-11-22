Rails.application.routes.draw do
  resources :articles, except: [:destroy, :update]
  get '/new', to: 'articles#new'

  root to: 'articles#index'
end
