class Items < ActiveRecord::Migration
  def change
  	create_table(:items) do |t|
  		t.string :name
  		t.integer :cost
  		t.text :description
  		t.timestamp
  	end
  end
end
