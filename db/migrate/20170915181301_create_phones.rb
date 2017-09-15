class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|

      t.timestamps
    end
  end
end
