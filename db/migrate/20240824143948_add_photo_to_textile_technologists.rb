class AddPhotoToTextileTechnologists < ActiveRecord::Migration[7.1]
  def change
    add_column :textile_technologists, :photo, :string
  end
end
