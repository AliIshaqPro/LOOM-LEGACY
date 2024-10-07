class AddPhotoToBoardMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :board_members, :photo, :string
  end
end
