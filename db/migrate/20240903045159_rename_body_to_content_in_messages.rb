class RenameBodyToContentInMessages < ActiveRecord::Migration[7.1]
  def change
    rename_column :messages, :body, :content
  end
end
