Rails.application.routes.draw do
  resources :vectors, only: [:index, :show]
  root to: 'vectors#index'
end
