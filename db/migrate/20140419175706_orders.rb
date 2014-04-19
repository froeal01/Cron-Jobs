class Orders < ActiveRecord::Migration
  def change
  	create_table(:orders) do |t|
  		t.string :delivery_contact, null: false, default: ""
  		t.string :delivery_street, null: false, default: ""
  		t.string :delivery_city, null: false, default: ""
  		t.string :delivery_state, null: false, default: ""
  		t.string :delivery_zip, null: false, default: "", limit: 5
  		t.timestamp
  	end
  end
end
