class SubOrders < ActiveRecord::Migration
  def change
  	create_table(:sub_orders) do |t|
  		t.integer :quantity
  		t.integer :cost
  		t.integer :item_id
  		t.integer :order_id
  	end
  end
end
