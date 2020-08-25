class VideosExecutionsController < ApplicationController
  protect_from_forgery except: :create
  def create
    @video = Video.find(params[:video_id])
    @user_quest = UserQuest.find(params[:user_quest_id])
    @videos_execution = VideosExecution.find_by(video: @video, user_quest: @user_quest)
    if @videos_execution.nil?
      @videos_execution = VideosExecution.create(video: @video, user_quest: @user_quest)
    end
  end

end
