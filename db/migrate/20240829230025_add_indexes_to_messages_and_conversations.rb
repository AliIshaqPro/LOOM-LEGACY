
class AddIndexesToMessagesAndConversations < ActiveRecord::Migration[7.1]
  def change
    add_index :messages, :conversation_id
    add_index :messages, [:conversation_id, :created_at]  # Composite index for sorting
    add_index :conversations, [:sender_id, :recipient_id]  # Useful if searching by user
  end
end
