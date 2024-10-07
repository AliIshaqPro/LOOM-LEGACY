class AddPhotoToInvestors < ActiveRecord::Migration[7.1]
  def change
    add_column :investors, :photo, :string
  end
end
