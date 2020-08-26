Rails.application.routes.draw do
  get 'chatrooms/show'
  devise_for :users
  get 'home', to: 'pages#home', as: :home

  devise_scope :user do
    authenticated :user do
      root 'pages#dashboard', as: :authenticated_root
    end
    unauthenticated do
      root 'pages#home', as: :unauthenticated_root
    end
  end

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
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
