class ChangePhoneNoToLogin < ActiveRecord::Migration
  def up
 change_column :logins, :phone_no, :bigint, :limit=>10 
  end

  def down
	remove_column :logins, :phone_no
  end
end
