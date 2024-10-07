class AddPhotoToCustomerServiceManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :customer_service_managers, :photo, :string
  end
end
