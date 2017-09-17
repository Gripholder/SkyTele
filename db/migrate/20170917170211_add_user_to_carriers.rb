class AddUserToCarriers < ActiveRecord::Migration[5.1]
  def change
    add_reference :carriers, :user, foreign_key: true
  end
end
