class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    if current_user.admin == true
      @chatrooms = Chatroom.all
    else
      @userquests = UserQuest.where(user: current_user)
      @chatrooms = Chatroom.where(user_quest: @userquests)
    end
  end
end
