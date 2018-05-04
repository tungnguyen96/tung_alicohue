class AddAttachmentAvatarToCompanyInfos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :company_infos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :company_infos, :avatar
  end
end
