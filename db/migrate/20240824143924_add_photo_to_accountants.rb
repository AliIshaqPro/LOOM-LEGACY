class AddPhotoToAccountants < ActiveRecord::Migration[7.1]
  def change
    add_column :accountants, :photo, :string
  end
end
