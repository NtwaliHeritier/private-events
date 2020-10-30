Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "events#index"
  resources :users, only: %i[new create show]
  resources :events do
    resources :invitations
  end
  
  get 'signup', to: 'users#new', as: 'signup'  
  post 'sessions', to: 'sessions#create'
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  
end
