Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root 'homepage#new'
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :sessions
  get '/workspaces', to: 'workspaces#index'
end
