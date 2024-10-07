module MessagesHelper
  def message_class(message, current_user)
    message.user_id == current_user.id ? 'my-message' : 'other-message'
  end
end
