class AddPhotoToMechanicalEngineers < ActiveRecord::Migration[7.1]
  def change
    add_column :mechanical_engineers, :photo, :string
  end
end
