Rails.application.routes.draw do
  resources :contents
  resources :courses
  
  root to: 'sessions#new'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  
  get 'public/landing'

  resources :users

  get 'login', to: 'sessions#new'
  post'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
