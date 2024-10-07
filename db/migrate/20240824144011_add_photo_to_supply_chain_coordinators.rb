class AddPhotoToSupplyChainCoordinators < ActiveRecord::Migration[7.1]
  def change
    add_column :supply_chain_coordinators, :photo, :string
  end
end
