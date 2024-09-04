class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new(message_params)
    @message.user = current_user

    if @message.save
      # Broadcast the new message to the conversation's channel
      ConversationChannel.broadcast_to(
        @conversation,
        render_to_string(partial: "messages/message", locals: { message: @message, current_user: current_user })
      )

      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to conversation_path(@conversation) }
      end
    else
      flash.now[:alert] = "Message could not be sent."
      @messages = @conversation.messages.order(created_at: :asc)
      render "conversations/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
