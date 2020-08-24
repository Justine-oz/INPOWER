class FlashcardsExecutionsController < ApplicationController
  protect_from_forgery except: :create
  def create
    @flashcard = Flashcard.find(params[:flashcard_id])
    @user_quest = UserQuest.find(params[:user_quest_id])
    @flashcards_execution = FlashcardsExecution.find_by(flashcard: @flashcard, user_quest: @user_quest)
    if @flashcards_execution.nil?
      @flashcards_execution = FlashcardsExecution.create(flashcard: @flashcard, user_quest: @user_quest)
    end
  end

end
