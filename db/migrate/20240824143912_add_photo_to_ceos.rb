class AddPhotoToCeos < ActiveRecord::Migration[7.1]
  def change
    add_column :ceos, :photo, :string
  end
end
