class MessagesController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @message = Message.new(message_params.merge(user: current_user, room: @room))
    @message.save
    RoomChannel.broadcast_to(
      @room,
      render_to_string(partial: "message", locals: { message: @message })
    )
  end

  def messages
    @messages = Message.all.order("created_at DESC")
  end

private

  def message_params
    params.require(:message).permit(:content)
  end
end
