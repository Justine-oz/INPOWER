Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  post "mood_update", to: "pages#mood_update"

  resources :userquests
  resources :quests, only: [:show] do
    get "flashcards", to: "quests#flashcards", as: :flashcards
    get "videos", to: "quests#videos", as: :videos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
