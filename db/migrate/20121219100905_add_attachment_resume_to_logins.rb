class AddAttachmentResumeToLogins < ActiveRecord::Migration
  def self.up
    change_table :logins do |t|
      t.attachment :resume
    end
  end

  def self.down
    drop_attached_file :logins, :resume
  end
end
