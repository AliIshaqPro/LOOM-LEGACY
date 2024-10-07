class AddPhotoToCadDesigners < ActiveRecord::Migration[7.1]
  def change
    add_column :cad_designers, :photo, :string
  end
end
