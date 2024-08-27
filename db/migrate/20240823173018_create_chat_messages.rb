class CreateChatMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_messages do |t|
      t.text :content
      t.string :room

      t.timestamps
    end
  end
end
