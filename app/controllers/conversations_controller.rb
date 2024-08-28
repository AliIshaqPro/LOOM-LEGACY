class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.where(sender_id: current_user.id).or(Conversation.where(recipient_id: current_user.id))
  end

  def create
  recipient = User.find_by(phone_number: params[:phone_number])

  if recipient
    # Ensure that current_user is set as the sender
    @conversation = Conversation.between(current_user.id, recipient.id)
                               .first_or_create!(sender_id: current_user.id, recipient_id: recipient.id)
    redirect_to conversation_messages_path(@conversation)
  else
    flash[:alert] = "Recipient with phone number not found."
    redirect_to conversations_path
  end
end

  private

  def conversation_params
    params.permit(:sender_id)
  end
end
