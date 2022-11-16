Rails.application.routes.draw do
  get 'manegements/index'
  root to: "manegements#index"
end
