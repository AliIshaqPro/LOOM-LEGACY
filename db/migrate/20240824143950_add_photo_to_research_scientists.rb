class AddPhotoToResearchScientists < ActiveRecord::Migration[7.1]
  def change
    add_column :research_scientists, :photo, :string
  end
end
