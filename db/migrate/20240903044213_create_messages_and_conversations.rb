class CreateMessagesAndConversations < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.integer :user_id
      t.text :body
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false

      t.index [:conversation_id, :created_at], name: 'index_messages_on_conversation_id_and_created_at'
      t.index :conversation_id
    end

    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.string :title
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false

      t.index [:sender_id, :recipient_id], name: 'index_conversations_on_sender_id_and_recipient_id'
    end
  end
end
