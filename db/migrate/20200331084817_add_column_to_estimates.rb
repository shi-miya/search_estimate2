class AddColumnToEstimates < ActiveRecord::Migration[5.2]
  def change
    add_column :estimates, :a_profit, :integer
    add_column :estimates, :trade_price_rate, :integer
  end
end
