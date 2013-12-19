class AddIndexToPortfoliosUserId < ActiveRecord::Migration
  def change
    add_index :portfolios, :user_id
  end
end
