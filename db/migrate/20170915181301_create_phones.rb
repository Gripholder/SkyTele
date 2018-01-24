class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.text :photo_url

      t.timestamps
    end
  end
end
