class AddPhotoToProcurementManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :procurement_managers, :photo, :string
  end
end
