class AddUserIdToMasterpieces < ActiveRecord::Migration
  def change
    add_column :masterpieces, :user_id, :integer
    add_index :masterpieces, :user_id
  end
end
