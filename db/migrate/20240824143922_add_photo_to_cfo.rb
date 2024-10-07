class AddPhotoToCfo < ActiveRecord::Migration[7.1]
  def change
    add_column :cfos, :photo, :string
  end
end
