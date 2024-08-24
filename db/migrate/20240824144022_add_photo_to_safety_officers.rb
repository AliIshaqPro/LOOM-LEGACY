class AddPhotoToSafetyOfficers < ActiveRecord::Migration[7.1]
  def change
    add_column :safety_officers, :photo, :string
  end
end
