class AddAttachmentAvatarToAdministrators < ActiveRecord::Migration[5.2]
  def self.up
    change_table :administrators do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :administrators, :avatar
  end
end
