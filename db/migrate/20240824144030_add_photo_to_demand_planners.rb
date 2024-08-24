class AddPhotoToDemandPlanners < ActiveRecord::Migration[7.1]
  def change
    add_column :demand_planners, :photo, :string
  end
end
