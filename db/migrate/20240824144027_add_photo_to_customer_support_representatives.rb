class AddPhotoToCustomerSupportRepresentatives < ActiveRecord::Migration[7.1]
  def change
    add_column :customer_support_representatives, :photo, :string
  end
end
