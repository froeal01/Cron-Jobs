class Subscriptions < ActiveRecord::Migration
  def change
  	create_table(:subscriptions) do |t|
  		t.string :plan
  		t.text :description
  		t.timestamp
  	end
  end
end
