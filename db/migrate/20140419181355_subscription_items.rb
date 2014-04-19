class SubscriptionItems < ActiveRecord::Migration
  def change
  	create_table(:subscription_items) do |t|
  		t.integer :subscription_id
  		t.integer :items_id
  	end
  end
end
