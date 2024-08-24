class AddPhotoToPatternMakers < ActiveRecord::Migration[7.1]
  def change
    add_column :pattern_makers, :photo, :string
  end
end
