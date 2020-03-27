class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.integer :code,             null: false
      t.string  :name,             null: false
      t.string  :person_in_charge
      t.string  :employee,         null: false
      t.timestamps
    end
  end
end
