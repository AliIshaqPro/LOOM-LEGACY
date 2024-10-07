class AddPhotoToEnvironmentalSpecialists < ActiveRecord::Migration[7.1]
  def change
    add_column :environmental_specialists, :photo, :string
  end
end
