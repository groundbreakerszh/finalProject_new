class AddAttachmentImageToSoftskills < ActiveRecord::Migration
  def self.up
    change_table :soft_skills do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :soft_skills, :image
  end
end
