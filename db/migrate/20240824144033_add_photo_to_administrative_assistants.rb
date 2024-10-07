class AddPhotoToAdministrativeAssistants < ActiveRecord::Migration[7.1]
  def change
    add_column :administrative_assistants, :photo, :string
  end
end
