class Conversation < ApplicationRecord
    belongs_to :sender, class_name: "User"
    belongs_to :recipient, class_name: "User"
  validates :sender, :recipient, presence: true
    has_many :messages, dependent: :destroy
  
    validates :sender_id, uniqueness: { scope: :recipient_id }
  
    # Ensures that a conversation between the same sender and recipient is not duplicated
    def self.between(sender_id, recipient_id)
      where(sender_id: sender_id, recipient_id: recipient_id).or(
        where(sender_id: recipient_id, recipient_id: sender_id)
      )
    end

    def other_user(current_user)
        current_user == sender ? recipient : sender
      end
  end