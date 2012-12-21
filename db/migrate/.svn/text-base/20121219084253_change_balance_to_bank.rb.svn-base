class ChangeBalanceToBank < ActiveRecord::Migration
  def up
  	change_column :banks, :balance, :float,:default=>0
  end

  def down
  	remove_column :banks, :balance
  end
end
