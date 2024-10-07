class AddPhotoToQualityControlInspectors < ActiveRecord::Migration[7.1]
  def change
    add_column :quality_control_inspectors, :photo, :string
  end
end
