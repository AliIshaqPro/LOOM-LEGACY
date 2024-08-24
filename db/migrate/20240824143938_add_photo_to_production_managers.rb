class AddPhotoToProductionManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :production_managers, :photo, :string
  end
end
