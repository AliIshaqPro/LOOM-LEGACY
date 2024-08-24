class AddPhotoToItManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :it_managers, :photo, :string
  end
end
