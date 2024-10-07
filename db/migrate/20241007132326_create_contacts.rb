class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.boolean :website
      t.boolean :branding
      t.boolean :ecommerce
      t.boolean :seo
      t.text :message

      t.timestamps
    end
  end
end
