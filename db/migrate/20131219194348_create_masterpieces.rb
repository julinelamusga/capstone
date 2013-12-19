class CreateMasterpieces < ActiveRecord::Migration
  def change
    create_table :masterpieces do |t|
      t.integer :id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
