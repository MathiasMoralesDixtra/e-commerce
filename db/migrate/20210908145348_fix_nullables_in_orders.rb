class FixNullablesInOrders < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:orders, :address_id, true)
    change_column_null(:orders, :user_id, true)
  end
end
