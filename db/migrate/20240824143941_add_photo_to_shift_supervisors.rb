class AddPhotoToShiftSupervisors < ActiveRecord::Migration[7.1]
  def change
    add_column :shift_supervisors, :photo, :string
  end
end
