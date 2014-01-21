class AddAttachmentImageToScreengrabs < ActiveRecord::Migration
  def self.up
    change_table :screengrabs do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :screengrabs, :image
  end
end
