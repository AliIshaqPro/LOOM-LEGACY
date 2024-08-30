class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation

  # MessagesController
# app/controllers/messages_controller.rb
# MessagesController
def index
  @conversation = Conversation.find(params[:conversation_id])
  @messages = @conversation.messages
    .order(created_at: :desc)
    .limit(6)
    .to_a
    .reverse
  @most_recent_message = @conversation.messages.order(created_at: :desc).first
end


  def create
    @message = @conversation.messages.build(message_params)
    @message.user = current_user

    if @message.save
      respond_to do |format|
        format.html { redirect_to conversation_messages_path(@conversation) }
        format.js   # This will look for create.js.erb
      end
    else
      respond_to do |format|
        format.html { render :index }
        format.js   { render 'create_error.js.erb' } # Optionally handle errors with AJAX as well
      end
    end
  end

  private

  def set_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
