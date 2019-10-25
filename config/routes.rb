Rails.application.routes.draw do
  resources :histories
  resources :trainings
  resources :mypages do
    member do
      get "home", to: "mypages#home"
      get "training_list", to: "mypages#training_list"
      get "report", to: "mypages#report"
    end
  end
  devise_for :users
  root to: 'trainings#index'
end
