class AddPhotoToMarketingManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :marketing_managers, :photo, :string
  end
end
