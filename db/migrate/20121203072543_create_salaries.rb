class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :login_id
      t.date :salary_date
      t.float :working_days
      t.float :present_days
      t.float :absent_days
      t.float :basic
      t.float :hr
      t.float :conveyance
      t.float :da
      t.float :ma
      t.float :other
      t.float :grosspay
      t.float :pf
      t.float :net_pay

      t.timestamps
    end
  end
end
