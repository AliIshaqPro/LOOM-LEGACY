class AddTimestampsToAhoyVisits < ActiveRecord::Migration[7.1]
  def change
    add_column :ahoy_visits, :created_at, :datetime, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    add_column :ahoy_visits, :updated_at, :datetime, null: false, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
