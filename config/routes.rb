Rails.application.routes.draw do
  resources :articles, except: [:destroy, :edit, :update]

  root to: 'articles#index'
end
