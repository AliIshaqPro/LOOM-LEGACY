class AddPhotoToComplianceManagers < ActiveRecord::Migration[7.1]
  def change
    add_column :compliance_managers, :photo, :string
  end
end
