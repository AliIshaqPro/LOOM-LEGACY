class AddPhotoToSystemsAdministrators < ActiveRecord::Migration[7.1]
  def change
    add_column :systems_administrators, :photo, :string
  end
end
