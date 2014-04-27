class ChangeNameOfAmountColumn < ActiveRecord::Migration
  def change
  	rename_column :hourly_revenues, :amout, :ChangeNameOfAmountColumn
  end
end
