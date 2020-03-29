class CreateEstimatesItems < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates_items do |t|
      t.references      :estimate, foreign_key: true
      t.references      :item,     foreign_key: true 
      t.timestamps
    end
  end
end
