class AddPhotoToColorists < ActiveRecord::Migration[7.1]
  def change
    add_column :colorists, :photo, :string
  end
end
