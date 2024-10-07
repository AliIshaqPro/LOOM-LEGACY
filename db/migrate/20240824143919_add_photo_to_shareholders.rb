class AddPhotoToShareholders < ActiveRecord::Migration[7.1]
  def change
    add_column :shareholders, :photo, :string
  end
end
