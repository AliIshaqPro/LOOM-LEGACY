class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  has_many :conversations
  validates :content, presence: true

  after_create_commit do
    broadcast_append_to conversation
  end
end
