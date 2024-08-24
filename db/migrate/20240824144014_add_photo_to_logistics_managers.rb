class AddPhotoToLogisticsManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :logistics_managers, :photo, :string
  end
end
