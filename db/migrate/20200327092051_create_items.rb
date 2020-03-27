class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :code,           null: false
      t.string  :maker,           null: false
      t.string  :maker,          null: false
      t.string  :maker_code
      t.text    :name,           null: false
      t.string  :product_number, null: false
      t.integer :retail_price
      t.integer :cost,           null: false
      t.text    :note

      t.timestamps
    end
  end
end
