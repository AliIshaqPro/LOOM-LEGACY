class AddPhotoToTextileDesigners < ActiveRecord::Migration[7.1]
  def change
    add_column :textile_designers, :photo, :string
  end
end
