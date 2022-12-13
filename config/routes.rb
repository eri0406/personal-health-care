Rails.application.routes.draw do
  devise_for :users
  get 'manegements/index'
  root to: "manegements#index"
  resources :manegements, only: [:index, :new, :create]
end
