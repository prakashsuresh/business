class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.integer :acc_no
      t.string :name
      t.float :balance

      t.timestamps
    end
  end
end
