class AddPortfolioIdToMasterpieces < ActiveRecord::Migration
  def change
    add_column :masterpieces, :portfolio_id, :integer
    add_index :masterpieces, :portfolio_id
  end
end
