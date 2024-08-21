class Ceo < ApplicationRecord
  has_one_attached :photo
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable
end
