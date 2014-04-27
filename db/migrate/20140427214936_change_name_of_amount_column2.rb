class ChangeNameOfAmountColumn2 < ActiveRecord::Migration
  def change
  	rename_column :hourly_revenues, :ChangeNameOfAmountColumn, :amount
  end
end
