class AddPhotoToSoftwareDevelopers < ActiveRecord::Migration[7.1]
  def change
    add_column :software_developers, :photo, :string
  end
end
