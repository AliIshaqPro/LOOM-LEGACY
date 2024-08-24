class AddPhotoToSalesManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :sales_managers, :photo, :string
  end
end
