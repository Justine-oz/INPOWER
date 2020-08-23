class QuestsController < ApplicationController

  def show
    @quest = Quest.find(params[:id])
  end

  def flashcards
    @quest = Quest.find(params[:quest_id])
    @flashcards = @quest.flashcards
  end

  def videos
    @quest = Quest.find(params[:quest_id])
    @videos = @quest.videos
  end
end
