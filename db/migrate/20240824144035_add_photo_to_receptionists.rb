class AddPhotoToReceptionists < ActiveRecord::Migration[7.1]
  def change
    add_column :receptionists, :photo, :string
  end
end
