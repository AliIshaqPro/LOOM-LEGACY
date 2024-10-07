class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'
  
  validates :sender_id, :recipient_id, presence: true

  scope :between, -> (sender_id, recipient_id) do
    where(sender_id: sender_id, recipient_id: recipient_id)
    .or(where(sender_id: recipient_id, recipient_id: sender_id))
  end

  def other_user(current_user)
    if self.sender_id == current_user.id
      User.find(self.recipient_id)
    else
      User.find(self.sender_id)
    end
  end
end
