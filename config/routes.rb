Rails.application.routes.draw do
  devise_for :users, :controllers  => {:registrations => :users}
  resources :users, only: [:index, :show, :destroy, :create, :update]
  resources :issues, only: [:index, :show, :destroy, :create, :update]
  resources :projects, only: [:index, :show, :destroy, :create, :update]
  post 'tokens/verify', to:'tokens#verify'
  post 'tokens/verify_token', to:'tokens#verify_token'
end

