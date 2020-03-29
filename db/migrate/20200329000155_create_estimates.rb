class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string          :name,             null: false
      t.string          :author,           null: false
      t.string          :expiration_date
      t.string          :payment_terms
      t.integer         :trade_price,      null: false
      t.integer         :total_price,      null: false
      t.integer         :note
      t.integer         :amount,           null: false 
      t.integer         :profit_rate,      null: false
      t.integer         :cost_rate,        null: false
      t.integer         :total_profit,     null: false
      t.references      :user,    foreign_key: true
      t.references      :company, foreign_key: true 

      t.timestamps
    end
  end
end
