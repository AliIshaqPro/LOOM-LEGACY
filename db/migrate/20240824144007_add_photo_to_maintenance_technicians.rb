class AddPhotoToMaintenanceTechnicians < ActiveRecord::Migration[7.1]
  def change
    add_column :maintenance_technicians, :photo, :string
  end
end
