class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.integer :age

      t.references :user

      t.timestamps
    end
  end
end
