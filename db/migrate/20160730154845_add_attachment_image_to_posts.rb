class AddAttachmentImageToPosts < ActiveRecord::Migration
  def self.up
    change_table :hard_skills do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hard_skills, :image
  end
end
