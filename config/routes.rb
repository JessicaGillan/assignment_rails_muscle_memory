Rails.application.routes.draw do
  resources :schmarticles
  resources :articles
  get '/new', to: 'articles#new'

  root to: 'articles#index'
end
