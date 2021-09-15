class AddIsCartToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :is_cart, :boolean
  end
end
