class CreateCarriers < ActiveRecord::Migration[5.1]
  def change
    create_table :carriers do |t|

      t.timestamps
    end
  end
end
