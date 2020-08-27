class MessagesController < ApplicationController
   def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      redirect_to chatrooms_path
    else
      render "chatrooms/index"
    end
  end

  ChatroomChannel.broadcast_to(
    @chatroom,
    render_to_string(partial: "message", locals: { message: @message })
  )

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
