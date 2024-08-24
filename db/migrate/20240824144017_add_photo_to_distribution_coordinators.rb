class AddPhotoToDistributionCoordinators < ActiveRecord::Migration[7.1]
  def change
    add_column :distribution_coordinators, :photo, :string
  end
end
