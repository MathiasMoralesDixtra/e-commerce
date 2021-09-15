class AddQuantityToOrderProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :order_products, :quantity, :integer
    add_column :order_products, :unit_price, :integer
  end
end
