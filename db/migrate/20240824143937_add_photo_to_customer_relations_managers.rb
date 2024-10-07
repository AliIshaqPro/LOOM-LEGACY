class AddPhotoToCustomerRelationsManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :customer_relations_managers, :photo, :string
  end
end
