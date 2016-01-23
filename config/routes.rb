Rails.application.routes.draw do
  devise_for :users, :controllers  => {:registrations => :users}
  resources :users, only: [:index, :show, :destroy, :create, :update]
  resources :issues, only: [:index, :show, :destroy, :create, :update]
  resources :projects, only: [:index, :show, :destroy, :create, :update]
end

