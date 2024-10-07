class AddPhotoToRecruitmentSpecialists < ActiveRecord::Migration[7.1]
  def change
    add_column :recruitment_specialists, :photo, :string
  end
end
