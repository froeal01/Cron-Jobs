class HourlyRevenue < ActiveRecord::Migration
  def change
  	create_table (:hourly_revenues) do |t|
  		t.integer :amout
  		t.datetime :hour
  	end
  end
end
