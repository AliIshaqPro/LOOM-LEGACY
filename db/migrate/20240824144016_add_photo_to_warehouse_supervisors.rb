class AddPhotoToWarehouseSupervisors < ActiveRecord::Migration[7.1]
  def change
    add_column :warehouse_supervisors, :photo, :string
  end
end
