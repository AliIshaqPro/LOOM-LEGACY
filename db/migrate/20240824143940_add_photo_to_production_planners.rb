class AddPhotoToProductionPlanners < ActiveRecord::Migration[7.1]
  def change
    add_column :production_planners, :photo, :string
  end
end
