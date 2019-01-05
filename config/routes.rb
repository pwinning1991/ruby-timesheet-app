Rails.application.routes.draw do
  resources :posts
  devise_for :users, skip: [:registration]
  root to: 'static#homepage'
end
