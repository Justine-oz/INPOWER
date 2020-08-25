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
  get "userquests/:user_quest_id/flashcards/:flashcard_id/flashcards_executions", to: "flashcards_executions#create", as: :flashcards_progress
  get "userquests/:user_quest_id/videos/:video_id/videos_executions", to: "videos_executions#create", as: :videos_progress
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
