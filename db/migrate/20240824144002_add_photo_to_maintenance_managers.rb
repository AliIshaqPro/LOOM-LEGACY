class AddPhotoToMaintenanceManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :maintenance_managers, :photo, :string
  end
end
