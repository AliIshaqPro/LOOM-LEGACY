class AddPhotoToMachineOperators < ActiveRecord::Migration[7.1]
  def change
    add_column :machine_operators, :photo, :string
  end
end
