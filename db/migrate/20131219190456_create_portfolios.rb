class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :id
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
