class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @filtered_users = User.where.not(id: current_user.id)
    
    if params[:phone_number].present?
      @filtered_users = @filtered_users.where('phone_number LIKE ?', "%#{params[:phone_number]}%")
    end
    
    @conversations = Conversation.where(sender_id: current_user.id).or(
      Conversation.where(recipient_id: current_user.id)
    )
  end

  def create
    recipient = User.find_by(phone_number: params[:phone_number])

    if recipient
      @conversation = Conversation.between(current_user.id, recipient.id).first_or_create!(
        sender_id: current_user.id, 
        recipient_id: recipient.id
      )
      redirect_to conversation_messages_path(@conversation)
    else
      flash[:alert] = "Recipient with phone number not found."
      redirect_to conversations_path
    end
  end
end
