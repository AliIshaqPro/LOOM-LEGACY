class AddPhotoToElectricalEngineers < ActiveRecord::Migration[7.1]
  def change
    add_column :electrical_engineers, :photo, :string
  end
end
