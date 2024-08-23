class ChatMessagesController < ApplicationController
  def create
    @chat_message = ChatMessage.new(chat_message_params)
    if @chat_message.save
      ActionCable.server.broadcast("chat_#{@chat_message.room}", {
        user: @chat_message.user.name,
        content: @chat_message.content
      })
    end
  end

  private

  def chat_message_params
    params.require(:chat_message).permit(:user_id, :content, :room)
  end
end


