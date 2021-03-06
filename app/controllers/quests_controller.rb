class QuestsController < ApplicationController

  def show
    @quest = Quest.find(params[:id])
    @userquest = UserQuest.find_by(user: current_user, quest: @quest)
    if @userquest.nil?
      @userquest = UserQuest.create(user: current_user, quest: @quest)
    end
    @progress = current_user.total_progress(@quest)
  end

  def flashcards
    @quest = Quest.find(params[:quest_id])
    @userquest = UserQuest.find_by(user: current_user, quest: @quest)
    @flashcards = @quest.flashcards.reject do |flashcard|
      FlashcardsExecution.find_by(user_quest: @userquest, flashcard: flashcard)
    end
    @total_flashcards = @quest.flashcards.length
    @done_flashcards_count = @total_flashcards - @flashcards.length
    @progress = ((@done_flashcards_count/@total_flashcards.to_f)*100).truncate
  end

  def videos
    @quest = Quest.find(params[:quest_id])
    @userquest = UserQuest.find_by(user: current_user, quest: @quest)
    @videos = @quest.videos.reject do |video|
      VideosExecution.find_by(user_quest: @userquest, video: video)
    end
    @total_videos = @quest.videos.length
    @done_videos_count = @total_videos - @videos.length
    @progress = ((@done_videos_count/@total_videos.to_f)*100).truncate
  end
end
