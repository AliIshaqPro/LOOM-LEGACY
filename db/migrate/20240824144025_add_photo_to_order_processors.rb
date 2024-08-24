class AddPhotoToOrderProcessors < ActiveRecord::Migration[7.1]
  def change
    add_column :order_processors, :photo, :string
  end
end
