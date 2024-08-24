class AddPhotoToOfficeManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :office_managers, :photo, :string
  end
end
