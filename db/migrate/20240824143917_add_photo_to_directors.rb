class AddPhotoToDirectors < ActiveRecord::Migration[7.1]
  def change
    add_column :directors, :photo, :string
  end
end
