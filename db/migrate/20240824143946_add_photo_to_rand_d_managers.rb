class AddPhotoToRandDManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :r_and_d_managers, :photo, :string
  end
end
