class AddPhotoToInventoryControllers < ActiveRecord::Migration[7.1]
  def change
    add_column :inventory_controllers, :photo, :string
  end
end
