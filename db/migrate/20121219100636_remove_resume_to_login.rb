class RemoveResumeToLogin < ActiveRecord::Migration
  def up
  	remove_column :logins, :resume
  end

  def down
  	add_column :logins, :resume, :string
  end
end
