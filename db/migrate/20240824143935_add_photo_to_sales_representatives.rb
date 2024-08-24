class AddPhotoToSalesRepresentatives < ActiveRecord::Migration[7.1]
  def change
    add_column :sales_representatives, :photo, :string
  end
end
