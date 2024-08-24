class AddPhotoToHrManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :hr_managers, :photo, :string
  end
end
