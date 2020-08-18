Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  post "mood_update", to: "pages#mood_update"

  resources :userquests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
