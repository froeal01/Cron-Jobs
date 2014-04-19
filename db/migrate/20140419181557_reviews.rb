class Reviews < ActiveRecord::Migration
  def change
  	create_table(:reviews) do |t|
  		t.string :comment, null: false, default: ""
  		t.integer :rating, null: false, default: ""
  		t.integer :reviewable_id
  		t.string :reviewable_type
  	end
  end
end
