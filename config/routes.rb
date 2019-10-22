Rails.application.routes.draw do
  resources :histories
  resources :trainings
  devise_for :users
  root to: 'history#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
