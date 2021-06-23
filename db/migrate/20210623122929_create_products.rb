class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :sale_price
      t.integer :quantity

      t.timestamps
    end
  end
end
