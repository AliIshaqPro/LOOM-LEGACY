class AddPhotoToFinancialAnalysts < ActiveRecord::Migration[7.1]
  def change
    add_column :financial_analysts, :photo, :string
  end
end
