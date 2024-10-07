class AddPhotoToTrainingAndDevelopmentOfficers < ActiveRecord::Migration[7.1]
  def change
    add_column :training_and_development_officers, :photo, :string
  end
end
