class ChangeColumnsOnSubOrders < ActiveRecord::Migration
  def change
  	change_column(:sub_orders, :quantity, :integer, default: 1)
  	change_column(:sub_orders, :cost, :integer, default: 0.00)
  end
end
