class AddPhotoToPurchasingOfficers < ActiveRecord::Migration[7.1]
  def change
    add_column :purchasing_officers, :photo, :string
  end
end
