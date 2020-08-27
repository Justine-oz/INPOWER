class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def admin
    @chatrooms = Chatroom.all
  end
end
