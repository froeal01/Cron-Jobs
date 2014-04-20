class AddTotalColumnToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :total, :integer, default: 0.00
  end
end
