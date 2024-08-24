class AddPhotoToChairmen < ActiveRecord::Migration[7.1]
  def change
    add_column :chairmen, :photo, :string
  end
end
