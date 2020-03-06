Rails.application.routes.draw do
  resources :histories
  resources :trainings
  resources :mypages do
    #memberに変更予定
    collection do
      get "toppage", to: "mypages#toppage"
      get "training_list", to: "mypages#training_list"
      get "report", to: "mypages#report"
    end
  end
  devise_for :users
  root to: 'mypages#toppage'
end
