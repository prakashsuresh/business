class AddAttachmentPhotoToLogins < ActiveRecord::Migration
  def self.up
    change_table :logins do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :logins, :photo
  end
end
