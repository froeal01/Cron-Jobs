class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string, :null => false, :default => ""
  	add_column :users, :last_name, :string, :null => false, :default => ""
  	add_column :users, :stripe_token, :string
  	add_column :users, :admin, :boolean, :null => false, default: false
  end
end
