class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.where(sender_id: current_user.id).or(Conversation.where(recipient_id: current_user.id))
    @conversation = Conversation.new
    @users = User.where.not(id: current_user.id) # Exclude the current user
  end

  def create
    
    recipient = User.find_by(phone_number: conversation_params[:phone_number])
    
    if recipient
      # Check if the conversation already exists
      @conversation = Conversation.find_or_create_by(sender_id: current_user.id, recipient_id: recipient.id)
      
      # Redirect to the conversation page or handle the response
      redirect_to conversation_path(@conversation)
    else
      flash[:alert] = "User with the provided phone number not found."
      render :index
    end
  end

  
  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
    @message = Message.new
  end

  private

  def conversation_params
    params.require(:conversation).permit(:phone_number)
  end
end
