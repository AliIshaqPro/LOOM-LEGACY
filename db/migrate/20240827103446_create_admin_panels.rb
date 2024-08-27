class CreateAdminPanels < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_panels do |t|
      t.references :ahoy_visit, null: false, foreign_key: { to_table: :ahoy_visits }

      t.timestamps
    end
  end
end
